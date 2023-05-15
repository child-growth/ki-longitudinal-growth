

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#mortality analysis
source(here("4-longbow-tmle-analysis/01-tabulate-mortality-data.R"))
source(here("4-longbow-tmle-analysis/02-coxPH_exclusive_exposures.R"))
source(here("4-longbow-tmle-analysis/03-coxPH_overlapping_exposures.R"))


#Run each script in  the "primary analysis folder"

#risk factor analysis
source(here("4-longbow-tmle-analysis/1_name_results_outputs.R"))
source(here("4-longbow-tmle-analysis/combine_results_Ns.R"))
source(here("4-longbow-tmle-analysis/combine_results_Ns_cont_sub.R"))
source(here("4-longbow-tmle-analysis/combine_results_Ns_sub.R"))
source(here("4-longbow-tmle-analysis/combine_results_outputs.R"))

#Results meta-analysis pooling
source(here("4-longbow-tmle-analysis/pool_Zscore_PAR.R"))
source(here("4-longbow-tmle-analysis/pool_RR.R"))
source(here("4-longbow-tmle-analysis/pool_ATE.R"))

source(here("4-longbow-tmle-analysis/pool_PAF.R"))


source(here("4-longbow-tmle-analysis/pool_Zscore_VIM.R"))

source(here("4-longbow-tmle-analysis/pool_Zscore_PAR_FE.R"))
source(here("4-longbow-tmle-analysis/pool_RR_FE.R"))




#Secondary outcome pooling
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_FE_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_unadj.R"))




"C:\Users\andre\Documents\HBGDki\ki-longitudinal-growth\4-longbow-tmle-analysis\coxph_mortality_analysis"
"C:\Users\andre\Documents\HBGDki\ki-longitudinal-growth\4-longbow-tmle-analysis\run-longbow"
