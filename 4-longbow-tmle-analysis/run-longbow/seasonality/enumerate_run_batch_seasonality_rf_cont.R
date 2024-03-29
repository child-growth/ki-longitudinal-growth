
rm(list=ls())
.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) )

source(paste0(here::here(), "/0-config.R"))
.libPaths( "~/rlibs" )
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis
setwd(here("4-longbow-tmle-analysis","run-longbow","seasonality"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

#Set to continious
default_params$script_params$count_Y <- FALSE

load(here("4-longbow-tmle-analysis","analysis specification","seasonality_rf_Zscore_analyses.rdata"))
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)


writeLines(jsonlite::toJSON(enumerated_analyses),"seasonality_rf_cont_analyses.json")


# 2. run batch
configure_cluster(here("0-project-functions","cluster_credentials.json"))
rmd_filename <- here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")

# send the batch to longbow (with provisioning disabled)
batch_inputs <- "seasonality_rf_cont_analyses.json"
batch_id_cont <- run_on_longbow(rmd_filename, batch_inputs, provision = FALSE)
batch_id_cont

# wait for the batch to finish and track progress
wait_for_batch(batch_id_cont)

# download the longbow outputs
get_batch_results(batch_id_cont, results_folder="seasonality_rf_cont_results")
length(dir("seasonality_rf_cont_results"))

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata", results_folder = "seasonality_rf_cont_results")
obs_counts <- load_batch_results("obs_counts.rdata", results_folder = "seasonality_rf_cont_results")

# save concatenated results
filename1 <- paste(paste('seasonality_rf_cont_results',Sys.Date( ),sep='_'),'RDS',sep='.')
filename2 <- paste(paste('seasonality_rf_cont_results_obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))
