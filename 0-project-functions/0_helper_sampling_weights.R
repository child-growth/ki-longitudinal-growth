
weighted_gam_estimate <- function(df, K=NULL, cluster=T) {
  
  df <-df %>% mutate(dummy=1)
  fiti <- NULL
  if(cluster){
    if(is.null(K)){
      try(fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr")+ s(cluster_no,bs="re",by=dummy), data = df, weights = weight))
    }else{
      try(fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr")+ s(cluster_no,bs="re",by=dummy), data = df, weights = weight))
    }
  }else{
    if(is.null(K)){
      try(fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr"), data = df, weights = weight))
    }else{
      try(fiti <- mgcv::gam(zscore ~ s(agem, bs = "cr"), data = df, weights = weight))
    }
  }
  pred.df <- data.frame(agem=0:24, dummy=0, weight=1, cluster_no=1)
  pred    <- as.numeric(predict(fiti,newdata=pred.df,type="response"))
  
  #get the prediction matrix
  try(Xp <- predict(fiti,newdata=pred.df,type="lpmatrix"))
  se <- sqrt(diag( Xp%*%vcov(fiti)%*%t(Xp) ) )
  
  # calculate upper and lower bounds
  lb <- pred - 1.96*se
  ub <- pred + 1.96*se
  
  # tabulate indicator by region
  df_survey <- data.frame(agem=0:24, fit=pred, fit_lb=lb, fit_ub=ub)
  return(df_survey)
}














library(survey)
# The most conservative approach would be to center any single-PSU strata around
# the sample grand mean rather than the stratum mean
options(survey.lonely.psu = "adjust")
# alternatively, most proprietary statistical software packages have single-PSU
# strata make no contribution to the variance by default
# options(survey.lonely.psu = "certainty")
compute_ci_with_sampling_weights <- function(df) {
  # Complex sample design parameters
  DHSdesign <- svydesign(
    id = df$cluster_no,
    strata = as.factor(df$stratification),
    weights = df$weight,
    data = df,
    nest = TRUE
  )
  # tabulate indicator by region
  df_survey <- svyby(~zscore, ~agem, DHSdesign, svymean, vartype = c("se", "ci"))
  df_n <- df %>% group_by(agem) %>% summarise(wgt_sum = sum(weight))
  df_survey <- dplyr::left_join(as.data.frame(df_survey), df_n, by = "agem")
  return(df_survey)
}



do_metaanalysis <- function(df_survey, pool_over, method = "FE") {
  # method = "REML"
  dhs_pooled <- list()
  for (measure_here in unique(df_survey$measure)) {
    for (age_here in 0:24) {
      df_to_pool <- df_survey %>%
          #mutate(agecat = agem) %>%
          filter(measure == measure_here,
                 agem==age_here)
      df_to_pool[, "studyid"] <- df_to_pool[, pool_over]
      df_pooled <- rma(
        yi = df_to_pool$zscore,
        sei = df_to_pool$se,
        ni = df_to_pool$wgt_sum,
        measure="GEN",
        method = method
      )
      df_pooled <- df_to_pool %>%
        ungroup() %>%
        summarise(
          nmeas = sum(wgt_sum)
        ) %>%
        mutate(
          est = df_pooled$beta,
          se = df_pooled$se,
          lb = df_pooled$ci.lb,
          ub = df_pooled$ci.ub,
          method.used=method
        )
      
      
      df_pooled$measure <- measure_here
      df_pooled$agem <- age_here
      dhs_pooled <- c(dhs_pooled, list(df_pooled))
    }
  }
  dhs_pooled <- do.call(rbind, dhs_pooled)
  return(dhs_pooled)
}


#----------------------------------
# simulataneous CIs for GAMs
# estimated by resampling the
# Baysian posterior estimates of
# the variance-covariance matrix
# assuming that it is multivariate normal
# the function below also estimates
# the unconditional variance-covariance
# matrix, Vb=vcov(x,unconditional=TRUE),
# which allows for undertainty in the actual
# estimated mean as well
# (Marra & Wood 2012 Scandinavian Journal of Statistics,
# simultaneous CIs provide much better coverage than pointwise CIs
# see: http://www.fromthebottomoftheheap.net/2016/12/15/simultaneous-interval-revisited/
#----------------------------------
gamCI <- function(m, newdata, nreps = 10000) {
  require(mgcv)
  require(dplyr)
  Vb <- vcov(m, unconditional = TRUE)
  pred <- predict(m, newdata, se.fit = TRUE)
  fit <- pred$fit
  se.fit <- pred$se.fit
  BUdiff <- MASS::mvrnorm(n = nreps, mu = rep(0, nrow(Vb)), Sigma = Vb)
  Cg <- predict(m, newdata, type = "lpmatrix")
  simDev <- Cg %*% t(BUdiff)
  absDev <- abs(sweep(simDev, 1, se.fit, FUN = "/"))
  masd <- apply(absDev, 2L, max)
  crit <- quantile(masd, prob = 0.95, type = 8)
  pred <- data.frame(newdata, fit = pred$fit, se.fit = pred$se.fit)
  pred <- mutate(pred,
    uprP = fit + (2 * se.fit),
    lwrP = fit - (2 * se.fit),
    uprS = fit + (crit * se.fit),
    lwrS = fit - (crit * se.fit)
  )
  return(pred)
}
