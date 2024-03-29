

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

load(here("data/mortality_adjustment_sets_list.Rdata"))

#---------------------------------------------
#Adjustment specifying function
#---------------------------------------------


specify_rf_analysis <- function(A, Y, file,  W=NULL, V= c("agecat","studyid","country"), id="id", adj_sets=adjustment_sets){
  
  analyses <- expand.grid(A=A,Y=Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
  analyses$id <- id
  analyses$strata <- list(V)
  if(is.null(W)){analyses$W <- adj_sets[analyses$A]}else{
    analyses$W <- list(W)
  }
  names(analyses$W) <- NULL
  analyses$file <- file
  
  return(analyses)
}


#Specify the mortality analyses
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           "ever_wast_uwt06",
           "ever_stunt_uwt06",
           "ever_co06",
           "ever_swast_suwt06",
           "ever_sstunt_suwt06",
           "ever_sev_co06"
           )

mortality <- specify_rf_analysis(A=Avars, Y=c("dead", "dead624", "dead0plus", "dead6plus"), 
                                 V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality, 
                                 file="stuntwast_mortality.Rdata")

Avars_morbidity <- c("ever_wasted06",
                     "ever_swasted06",
                     "pers_wasted06",
                     "ever_stunted06",
                     "ever_sstunted06",
                     "ever_wast_uwt06",
                     "ever_stunt_uwt06",
                     "ever_co06",
                     "ever_swast_suwt06",
                     "ever_sstunt_suwt06",
                     "ever_underweight06",
                     "ever_sunderweight06",
                     "ever_sev_co06"
)
morbidity <- specify_rf_analysis(A=Avars_morbidity,
                                 Y=c("co_occurence", "pers_wasted624"),
                                 V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality,
                                 file="stuntwast_morbidity.Rdata")


analyses <- morbidity
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/morbidity_analyses.rdata"))



#bind together datasets
analyses <- rbind(mortality, morbidity)



#Save analysis specification
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/mortality_analyses.rdata"))


#Make unadjusted analysis set
analyses$W <- NULL
save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/unadjusted_mortality_analyses.rdata"))



#Specify mortality sensitivity analysis

#Specify the mortality analyses
Avars <- c("ever_wasted06",
           "ever_swasted06",
           "pers_wasted06",
           "ever_stunted06",
           "ever_sstunted06",
           "ever_wast_uwt06",
           "ever_stunt_uwt06",
           "ever_co06",
           "ever_swast_suwt06",
           "ever_sstunt_suwt06",
           "ever_sev_co06"
)
analyses <- specify_rf_analysis(A=Avars, Y=c("dead", "dead624", "dead0plus", "dead6plus"), 
                                 V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality, 
                                 file="stuntwast_mortality_024.Rdata")

save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/mortality_analyses_024.rdata"))




#Specify the mortality analyses
analyses <- specify_rf_analysis(A=Avars, Y=c("dead"), 
                                V= c("studyid","country"), id="id", adj_sets=adjustment_sets_mortality, 
                                file="stuntwast_mortality_sens.Rdata")

save(analyses, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/mortality_analyses_sens.rdata"))




#Specify sex-mortality analysis
analyses_sex <- specify_rf_analysis(A="sex", Y=c("dead"), 
                                V= c("studyid","country"), id="id", adj_sets=NULL, 
                                file="stuntwast_mortality_sens.Rdata")

save(analyses_sex, file=paste0(here(),"/4-longbow-tmle-analysis/analysis specification/mortality_analyses_sex.rdata"))
