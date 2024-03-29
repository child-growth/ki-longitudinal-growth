
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#clean individual study data and harmonize risk factors not coded by the KI team
source(paste0(here(),"/1-data-cleaning/raw data cleaning/0_save_studies_as_rds.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/1_assetPCA-allstudies.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/2_BreastfeedingCleaning.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/3_BreastfeedingDatasetCreation.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/4_ImpsanCleaning.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/5_SafeH2OCleaning.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/6_DiarrheaCleaning.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/7_PROVIDE_measure_months.R"))
source(paste0(here(),"/1-data-cleaning/raw data cleaning/8_maternal_weight.R"))


#combined and clean datasets and make analysis-specific data subsets
source(paste0(here(),"/1-data-cleaning/1_process_FINAL_dataset.R"))
source(paste0(here(),"/1-data-cleaning/2_clean_FINAL_covariates.R"))
source(paste0(here(),"/1-data-cleaning/3_merge_covariates_and_raw_data.R"))
source(paste0(here(),"/1-data-cleaning/4_create_master_dataset.R"))
source(paste0(here(),"/1-data-cleaning/5_process_mortality_data.R"))
source(paste0(here(),"/1-data-cleaning/6_anthro_prepdata.R"))
source(paste0(here(),"/1-data-cleaning/7_DHS-data-cleaning.R"))
source(paste0(here(),"/1-data-cleaning/8_DHS-data-quantiles.R"))
source(paste0(here(),"/1-data-cleaning/9_seasonality_prepdata.R"))
source(paste0(here(),"/1-data-cleaning/10-monthly-ppt-processing.R"))
source(paste0(here(),"/1-data-cleaning/11_rainfall_prepdata.R"))
source(paste0(here(),"/1-data-cleaning/12_process_mortality_age_data.R"))
source(paste0(here(),"/1-data-cleaning/13_process_mortality_age_no_overlap.R"))
source(paste0(here(),"/1-data-cleaning/14_process_country_level_data.R"))
source(paste0(here(),"/1-data-cleaning/15_check_country_level_data.R"))
source(paste0(here(),"/1-data-cleaning/15_check_country_level_data_wasting.R"))
source(paste0(here(),"/1-data-cleaning/16_process_mortality_age_no_overlap_agestrat.R"))


#Tabulate analysis datasets
source(paste0(here(),"/1-data-cleaning/metadata scripts/1_create_KI_wasting_consort_data.R"))
source(paste0(here(),"/1-data-cleaning/metadata scripts/2_create_KI_stunting_consort_data.R"))
source(paste0(here(),"/1-data-cleaning/metadata scripts/3_check_extended_table1_stunting.R"))



