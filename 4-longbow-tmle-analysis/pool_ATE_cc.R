


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



dfull <- readRDS(paste0(res_dir, "rf results/longbow results/results_cont_CC.RDS"))


d <- dfull %>% filter(type=="ATE", agecat!="All")

d %>% filter(intervention_variable=="pers_wast", outcome_variable=="haz", estimate    != 0)

d %>% filter(intervention_variable=="rain_quartile", estimate    != 0)

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)
unique(d$intervention_variable)

#drop sparse variables (at least 10 obs per variable)
dim(d)
d <- d %>% filter(adjustment_set!="")
dim(d)

d <- mark_region(d)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest


RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_ATE_results_cc.rds"))
saveRDS(RMAest_clean, file=paste0(here::here(),"/data/pooled_ATE_results_cc.rds"))


