


rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))
#library("tlverse")

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library("sl3")
library("tmle3")
library("skimr")
library("data.table")
library("SuperLearner")
library("caret")


#Load and clean data
load(paste0(ghapdata_dir, "st_meanZ_rf.Rdata"))
haz <- d %>% filter(agecat=="24 months", !is.na(haz)) 
load(paste0(ghapdata_dir, "wast_meanZ_rf.Rdata"))
whz <- d %>% filter(agecat=="24 months", !is.na(whz))

length(unique(paste0(haz$studyid,haz$country)))

#Pick prediction variables and subset to studies that measure all variables
covars_haz <- c("sga","cleanck", "W_birthlen", "W_birthwt","W_meducyrs", "hhwealth_quart",
                "W_mwtkg","W_mhtcm", "W_feducyrs", "parity", "sex")
covars_whz <- c("sga","cleanck", "W_birthlen", "W_birthwt","W_meducyrs","W_fage", "nhh", "W_nrooms",
                "W_mwtkg", "W_mhtcm", "sex")



haz <- haz %>% group_by(studyid, country) %>% 
  mutate(N=n(),
         miss_sga = 1*(sum(is.na(sga))==N),
         miss_cleanck = 1*(sum(is.na(cleanck))==N),
         miss_W_birthlen = 1*(sum(is.na(W_birthlen))==N),
         miss_W_meducyrs = 1*(sum(is.na(W_meducyrs))==N),
         miss_W_feducyrs = 1*(sum(is.na(W_meducyrs))==N),
         miss_W_mwtkg = 1*(sum(is.na(W_mwtkg))==N),
         miss_W_mhtcm = 1*(sum(is.na(W_mhtcm))==N),
         miss_W_birthwt = 1*(sum(is.na(W_birthwt))==N),
         miss_hhwealth_quart = 1*(sum(is.na(hhwealth_quart))==N),
         miss_parity = 1*(sum(is.na(parity))==N),
         miss_sex = 1*(sum(is.na(sex))==N),
         sum_miss= miss_sga + miss_cleanck + miss_W_birthlen + miss_W_meducyrs + miss_W_feducyrs + miss_W_mhtcm +
         miss_W_mwtkg  + miss_W_birthwt+miss_sex+miss_hhwealth_quart + miss_parity)



whz <- whz %>% group_by(studyid, country) %>% 
  mutate(N=n(),
         miss_sga = 1*(sum(is.na(sga))==N),
         miss_cleanck = 1*(sum(is.na(cleanck))==N),
         miss_W_birthlen = 1*(sum(is.na(W_birthlen))==N),
         miss_W_meducyrs = 1*(sum(is.na(W_meducyrs))==N),
         miss_W_mwtkg = 1*(sum(is.na(W_mwtkg))==N),
         miss_W_mhtcm = 1*(sum(is.na(W_mhtcm))==N),
         miss_W_fage = 1*(sum(is.na(W_fage))==N),
         miss_W_birthwt = 1*(sum(is.na(W_birthwt))==N),
         miss_W_nrooms = 1*(sum(is.na(W_nrooms))==N),
         miss_nhh = 1*(sum(is.na(nhh))==N),
         miss_sex = 1*(sum(is.na(sex))==N),
         sum_miss= miss_sga + miss_cleanck + miss_W_birthlen + miss_W_meducyrs + miss_W_nrooms +
         miss_W_mwtkg + miss_W_mhtcm + miss_W_birthwt+miss_sex + miss_W_fage + miss_nhh)

table(haz$studyid, haz$sum_miss)
table(whz$studyid, whz$sum_miss)



haz <- haz %>% filter(sum_miss<=5) %>% subset(., select = c("studyid", "subjid", "country", "haz",  covars_haz))
whz <- whz %>% filter(sum_miss<=5) %>% subset(., select = c("studyid", "subjid", "country", "whz",  covars_whz))

#N's for manuscript
haz %>% ungroup() %>%
  summarize(Nstudies=length(unique(paste0(studyid, country))),
                  Nchildren=length(unique(paste0(studyid, subjid))))
whz %>% ungroup() %>%
  summarize(Nstudies=length(unique(paste0(studyid, country))),
            Nchildren=length(unique(paste0(studyid, subjid))))



stack <- make_learner_stack("Lrnr_mean",
                   "Lrnr_glm_fast",
                   "Lrnr_glmnet",
                   "Lrnr_gam",
                   list("Lrnr_xgboost", nthread=1))
screen_cor <- Lrnr_pkg_SuperLearner_screener$new("screen.corP")
cor_pipeline <- make_learner(Pipeline, screen_cor, stack)
fancy_stack <- make_learner(Stack, cor_pipeline, stack)
metalearner <- make_learner(Lrnr_nnls)

sl <- make_learner(Lrnr_sl,
                   learners = fancy_stack,
                   metalearner = metalearner)




## Function to estimate R2 within each cohort and outcome

SL_R2 <- function(dat, outcome, covars){
  
  cat(paste0(dat$studyid[1], " ",dat$country[1],"\n"))
  
  #Drop missingness
  node_list <- list(
    W=covars,
    A=NULL,
    Y=outcome
  )
  processed <- process_missing(data=dat, node_list,  max_p_missing = 0.5)
  dat <- processed$data
  
  # define covars
  X <- data.frame(dat[, -outcome, with=FALSE])
  
  #Drop near-zero variance predictors
  nzv_cols <- nearZeroVar(X)
  if(length(nzv_cols) > 0){ 
  dropped_covars <-  colnames(X)[nzv_cols]
  cat("Dropping for low variance: ", dropped_covars)
    X <- X[,-nzv_cols]
  }
  covars <- colnames(X)
  

  n= nrow(dat)
  y <- as.matrix(dat[, outcome, with=FALSE])
  colnames(y) <- NULL
  rownames(y) <- NULL
  
  

  #fit lm
  y_lm <- y
  colnames(y_lm) <- "y_lm"
  dat_lm  <- cbind(y_lm,X)
  
  fit_lm <- lm( y_lm ~ .,data = dat_lm )
  
  
  p <- predict(fit_lm)
  mse_lm <- mean( ((y_lm - p))^2)
  R2_lm <- 1 - mse_lm/var((y_lm))
  colnames( R2_lm ) <- NULL
  row.names(R2_lm) <- NULL
  
  df <- data.frame(y, X)  
  colnames(df)[1] <- outcome
    
  # create the sl3 task
  washb_task <- make_sl3_Task(
    data = df,
    covariates = covars,
    outcome = outcome
  )
  
  
  ##3. Fit the full model
  sl_fit <- sl$train(washb_task)
  yhat_full <- sl_fit$predict_fold(washb_task,"validation")
  

  mse_full <- 1/n * sum((yhat_full-y)^2)
  
  
  ##4. Fit the null model
  lrnr_cv_null <- make_learner(Lrnr_cv, make_learner(Lrnr_mean))
  fit_null <- lrnr_cv_null$train(washb_task)
  
  
  yhat_null <- fit_null$predict_fold(washb_task,"validation")
  
  mse_null <- 1/n * sum((yhat_null-y)^2)
  
  
  
  
  ##5. Construct CI for mse_full/mse_null
  IC <- 1/mse_null * ((yhat_full-y)^2 - mse_full) - mse_full/(mse_null)^2 * ((yhat_null-y)^2- mse_null)
  
  # check if the mean of IC is about 0
  cat("mean IC: ",mean((IC)))
  
  
  
  psi <- mse_full/mse_null
  se <- sqrt(var(IC)/n)
  CI_up <- psi + 1.96*se
  CI_low <- psi - 1.96*se
  
  R2 <- 1 - psi
  R2.ci1 <- 1 - CI_up
  R2.ci2 <- 1 - CI_low
  
  
  ##6. add more results to pool R2
  ic_mse_full <- (yhat_full-y)^2 - mse_full
  ic_mse_null <- (yhat_null-y)^2 - mse_null
  
  se_mse_full <- sqrt(var(ic_mse_full)/n)
  se_mse_null <- sqrt(var(ic_mse_null)/n)
  
  return(data.frame(r2_lm =R2_lm, r2=R2, r2.ci1=R2.ci1, r2.ci2=R2.ci2, mse=psi, mse.ci1=CI_low, mse.ci2=CI_up,
                    mse_full=mse_full, se_mse_full=se_mse_full, mse_null= mse_null, se_mse_null=se_mse_null, r2_se=se))

}


#Apply function to all cohorts that measure the covariates of interest
res_haz_list <- haz %>% group_by(studyid, country) %>% do(res=try(SL_R2(dat=.,  outcome="haz", covars=covars_haz)))
res_whz_list <- whz %>% group_by(studyid, country) %>% do(res=try(SL_R2(dat=.,  outcome="whz", covars=covars_whz)))

res_haz<-NULL
for(i in 1:nrow(res_haz_list)){
  if(class(res_haz_list$res[[i]]) !="try-error"){
    res_haz <- try(bind_rows(res_haz, data.frame(studyid=res_haz_list$studyid[i], country=res_haz_list$country[i], res_haz_list$res[[i]])))
  }
}

res_whz<-NULL
for(i in 1:nrow(res_whz_list)){
  if(class(res_whz_list$res[[i]]) !="try-error"){
    res_whz <- try(bind_rows(res_whz, data.frame(studyid=res_whz_list$studyid[i], country=res_whz_list$country[i], res_whz_list$res[[i]])))
  }
}

#Save results
filename_whz <- paste(paste('R2_results_whz',Sys.Date( ),sep='_'),'RDS',sep='.')
filename_haz <- paste(paste('R2_results_haz',Sys.Date( ),sep='_'),'RDS',sep='.')

saveRDS(res_whz, file=paste0(BV_dir,"/results/",filename_whz))
saveRDS(res_haz, file=paste0(BV_dir,"/results/",filename_haz))



#-------------------------
#Pool R2
#-------------------------



# Calculate pooled cv-R2 for haz dataset

nstudies <- haz %>% summarise(N=n())

res_haz_new <- merge(res_haz,nstudies ,by=c("studyid","country")) %>%
  mutate(var_mse_full=se_mse_full^2,var_mse_null=se_mse_null^2) %>%  
  dplyr::select (-c(se_mse_full, se_mse_null))



pooled_mse_full_haz <-fit.rma (data=res_haz_new, ni="N", yi="mse_full", vi= "var_mse_full",
                               age=NULL, method = "FE", measure="MN")

pooled_mse_null_haz <-fit.rma (data=res_haz_new, ni="N", yi="mse_null", vi= "var_mse_null",
                               age=NULL, method = "FE", measure="MN")

pooled_mse_haz <- as.matrix(pooled_mse_full_haz$est)/as.matrix(pooled_mse_null_haz$est)


pooled_r2_haz  <- 1-pooled_mse_haz 


# Calculate pooled cv-R2 for whz dataset 

nstudies <- whz %>% summarise(N=n())

res_whz_new <- merge(res_whz,nstudies ,by=c("studyid","country")) %>%
  mutate(var_mse_full=se_mse_full^2,var_mse_null=se_mse_null^2) %>%  
  dplyr::select (-c(se_mse_full, se_mse_null))


pooled_mse_full_whz <-fit.rma (data=res_whz_new, ni="N", yi="mse_full", vi= "var_mse_full",
                               age=NULL, method = "FE", measure="MN")

pooled_mse_null_whz <-fit.rma (data=res_whz_new, ni="N", yi="mse_null", vi= "var_mse_null",
                               age=NULL, method = "FE", measure="MN")

pooled_mse_whz <- as.matrix(pooled_mse_full_whz$est)/as.matrix(pooled_mse_null_whz$est)


pooled_r2_whz  <- 1-pooled_mse_whz 

print(c(pooled_r2_haz , pooled_r2_whz))







#"Pool R2 (direct method, with CI)"


# Calculate pooled cv-R2 for haz dataset

nstudies <- haz %>% summarise(N=n())

res_haz_new <- merge(res_haz,nstudies ,by=c("studyid","country")) %>%
  mutate(r2_var=r2_se^2)




pooled_r2_haz <-fit.rma (data=res_haz_new, ni="N", yi="r2", vi= "r2_var",
                               age=NULL, method = "FE", measure="MN")


pooled_r2_CIu_haz <- as.matrix(pooled_r2_haz$est) + 1.96*pooled_r2_haz$se
pooled_r2_CIl_haz <- as.matrix(pooled_r2_haz$est) - 1.96*pooled_r2_haz$se

print(c(pooled_r2_haz$est,pooled_r2_CIl_haz, pooled_r2_CIu_haz))





# Calculate pooled cv-R2 for whz dataset

nstudies <- whz %>% summarise(N=n())

res_whz_new <- merge(res_whz,nstudies ,by=c("studyid","country")) %>%
  mutate(r2_var=r2_se^2)




pooled_r2_whz <-fit.rma (data=res_whz_new, ni="N", yi="r2", vi= "r2_var",
                         age=NULL, method = "FE", measure="MN")


pooled_r2_CIu_whz <- as.matrix(pooled_r2_whz$est) + 1.96*pooled_r2_whz$se
pooled_r2_CIl_whz <- as.matrix(pooled_r2_whz$est) - 1.96*pooled_r2_whz$se

print(c(pooled_r2_whz$est,pooled_r2_CIl_whz, pooled_r2_CIu_whz))


pooled_r2_results <- data.frame(pooled_r2_haz$est,pooled_r2_CIl_haz, pooled_r2_CIu_haz,
                           pooled_r2_whz$est,pooled_r2_CIl_whz, pooled_r2_CIu_whz)



filename <- paste(paste('pooled_R2_results',Sys.Date( ),sep='_'),'RDS',sep='.')

saveRDS(pooled_r2_results, file=paste0(BV_dir,"/results/",filename))


res <- readRDS(paste0(BV_dir,"/results/pooled_R2_results_2021-08-06.RDS"))
res
