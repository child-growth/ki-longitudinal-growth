
rm(list=ls())
try(.libPaths( c( "/data/KI/R/x86_64-pc-linux-gnu-library/4.0/" , .libPaths() ) ))

source(paste0(here::here(), "/0-config.R"))
try(.libPaths( "~/rlibs" ))
library(data.table)
library(longbowtools)
#library(jsonlite)
library(progress)
library(longbowRiskFactors)


# 1. enumerate analysis

setwd(here("4-longbow-tmle-analysis","run-longbow","primary-analysis"))
inputs <- "inputs_template.json"
default_params <- jsonlite::fromJSON(inputs)

load(here("4-longbow-tmle-analysis","analysis specification","adjusted_stunt_rec_analyses.rdata"))
analyses<-stunt_rec_analyses
analyses <- analyses[c(12,1:11,13:86),]
enumerated_analyses <- lapply(seq_len(nrow(analyses)), specify_longbow)

#check data
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_rec_rf.Rdata")

paste0(BV_dir,"/tmle/","bin_stunt_rec","/")
run_ki_tmle(enumerated_analyses, results_folder="bin_stunt_rec", overwrite = F, skip_failed=F)

