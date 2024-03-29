##########################################
# ki longitudinal manuscripts
# DHS analysis - density medians

# This script cleans DHS quantile and KI median data.
# Data is prepared and saved to produce a figure that compares DHS estimates to those from
# the KI cohorts in fig-DHS-plots-laz.R and fig-DHS-plots-whz.R.

# Inputs:
#   0-config.R : configuration file
#   dhs.quantiles.rds
#   ki.zscore.medians.monthly.rds
#   ki.zscore.medians.quarterly.rds

# Outputs:
#   dhs.ki.zscore.medians.quarterly.rds
#   dhs.ki.zscore.medians.monthly.rds
##########################################

#---------------------------------------
# source configuration file
#---------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# Find DHS medians
dhs_quantiles <- readRDS(paste0(BV_dir, "/results/dhs/dhs_quantiles_country.rds"))
dhs_medians = dhs_quantiles %>% filter(quantile == 50)
# dhs_medians$region = recode_factor(dhs_medians$region, 
#                                    OVERALL = "Overall", 
#                                    AFRO = "Africa", 
#                                    PAHO = "Latin America", 
#                                    SEARO = "South Asia")

dhs_medians =  dhs_medians %>% mutate(
  measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
)

#temp <-readRDS(paste0(dhs_res_dir,"dhs.density.ki-countries.rds")) %>% filter(!is.na(country))

names(dhs_medians)[2] = "median"
dhs_medians = select(dhs_medians, c("country", "measure", "median"))
dhs_medians$dsource = "DHS"

# Find KI medians, combine KI and DHS medians into a single table
ki_medians_monthly = readRDS(paste0(BV_dir,"/results/dhs/ki.zscore.medians.monthly.rds"))
ki_medians_monthly_country = readRDS(paste0(BV_dir,"/results/dhs/ki.zscore.medians.monthly.country.rds")) %>% filter(!is.na(country))
ki_medians_quarterly = readRDS(paste0(BV_dir,"/results/dhs/ki.zscore.medians.quarterly.rds"))


calc_medians = function(ki_medians){
  ki_medians$dsource = "ki cohorts"
  # ki_medians$region = recode_factor(ki_medians$region, 
  #                                   OVERALL = "Overall", 
  #                                   AFRO = "Africa", 
  #                                   PAHO = "Latin America", 
  #                                   SEARO = "South Asia")
  
  ki_medians =  ki_medians %>% mutate(
    measure = factor(measure, levels = c("haz", "waz", "whz"), labels = c("LAZ", "WAZ", "WHZ"))
  )
  medians = bind_rows(ki_medians, dhs_medians)
  return (ki_medians)
}

medians_quarterly = calc_medians(ki_medians_quarterly) %>% bind_rows(., dhs_medians)
medians_monthly = calc_medians(ki_medians_monthly_country) %>% bind_rows(., dhs_medians)


saveRDS(medians_quarterly, file = paste0(dhs_res_dir,"dhs.ki.zscore.medians.quarterly.rds"))
saveRDS(medians_monthly, file = paste0(dhs_res_dir,"dhs.ki.zscore.medians.monthly.rds"))