

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(caret)
library(lmtest)

#Set adjustment covariates
Wvars <- c("sex", "tr", "brthmon", "vagbrth", "hdlvry", "single", "trth2o",       
 "cleanck",       "impfloor",      "hfoodsec",      "hhwealth_quart","W_mage",        "W_mhtcm",       "W_mwtkg",      
  "W_mbmi",        "W_fage",        "W_fhtcm",       "W_meducyrs",    "W_feducyrs",    "W_nrooms",      "W_nhh",        
  "W_nchldlt5",    "W_parity",      "impsan",        "safeh20")     

#load data
d <- readRDS(mortality_age_path)

d$subjid <- as.numeric(d$subjid)
d <- d %>% arrange(studyid, subjid, agedays)
table(d$studyid)
length(unique(d$studyid))

#Steps for each analysis:
#1) drop imputed agedth if needed
#2) drop observations other than the age category of interest
#3) Create survival outcome
summary(d$agedays)
table(d$agecat)
d <- d %>% filter(agedays <= 730)
d <- droplevels(d)

#Drop imputed age of death and studies with only imputed age of death
df <- d %>% filter(dead==1)
table(df$studyid, df$imp_agedth)

d <- d %>% filter(imp_agedth==0,
                  !(studyid %in% c("GMS-Nepal","SAS-CompFeed","SAS-FoodSuppl")))
length(unique(d$studyid))



X_vector <- c("stunt", "wast","wast_muac","underwt",          
              "sstunt",          "swast","swast_muac",            "sunderwt",         "stunt_uwt",       
              "wast_uwt",         "co",              
              "ever_stunt",       "ever_wast", "ever_wast_muac",        "ever_uwt",         "ever_sstunt",     
              "ever_swast", "ever_swast_muac","ever_suwt",        "ever_stunt_uwt",   "ever_wast_uwt",    "ever_co")





#All ages < 730 days
res <- run_cox_meta(df=d, X_vector=X_vector, Y="dead", Wvars=Wvars, V=NULL)
res_sex_strat <- run_cox_meta(df=d, X_vector=X_vector, Y="dead", Wvars=Wvars, V="sex")

#Dropping prenatal deaths
res_noPN <- run_cox_meta(df=d%>% filter(agecat!="(0,30]"),
                    X_vector=X_vector, Y="dead", Wvars=Wvars, V=NULL, agecat="1-24 months")
res_noPN_sex_strat <- run_cox_meta(df=d%>% filter(agecat!="(0,30]"),
                              X_vector=X_vector, Y="dead", Wvars=Wvars, V="sex", agecat="1-24 months")

#Age-strat, starting from birth
res_age_strat <- res_age_sex_strat <- NULL
res_age_strat <- run_cox_meta_agestrat(d=d, age_strat=levels(d$agecat), X_vector=X_vector, Y="dead", Wvars=Wvars, V=NULL)
res_age_sex_strat <- run_cox_meta_agestrat(d=d, age_strat=levels(d$agecat), X_vector=X_vector, Y="dead", Wvars=Wvars, V="sex")

#region strat
res_region <- NULL
res_region <- run_cox_meta(df=d, X_vector=X_vector, Y="dead", Wvars=Wvars, V="region", agecat=NULL, no_exp_overlap=T)



res$df <- "res"
res_sex_strat$df <- "res_sex_strat" 
res_noPN$df <- "res_noPN" 
res_noPN_sex_strat$df <- "res_noPN_sex_strat" 
res_age_strat$df <- "res_age_strat" 
res_age_sex_strat$df <- "res_age_sex_strat" 


fullres <- bind_rows(res, res_sex_strat, 
                     res_noPN, res_noPN_sex_strat,
                     res_age_strat, res_age_sex_strat)
          
saveRDS(fullres, file=paste0(BV_dir,"/results/full_cox_results.RDS"))
