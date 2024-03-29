



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>% 
  filter(type=="RR", 
         intervention_variable!="sga", !(intervention_variable=="parity" & outcome_variable=="ever_wasted"))
unique(dfull$intervention_variable)

dfull %>% filter(intervention_variable=="nrooms", outcome_variable=="ever_stunted")
dfull %>% filter(intervention_variable=="nhh")


#get parity, nhh, and nrooms
bin_primary_alt_ref <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_alt_ref_2022-12-02.RDS")) %>% 
  filter( agecat=="0-24 months"|agecat=="0-24 months (no birth st.)"|agecat=="0-24 months (no birth wast)", (intervention_variable=="parity")|intervention_variable=="nhh"|intervention_variable=="nrooms"|intervention_variable=="sga")

df <- bin_primary_alt_ref%>% filter(intervention_variable=="nrooms", agecat=="0-24 months", outcome_variable=="ever_stunted", type=="RR")

bin_primary_alt_ref_ns <- readRDS(paste0(res_dir, "rf results/raw longbow results/results_results_bin_primary_alt_ref_obs_counts_2022-12-02.RDS")) 
bin_primary_alt_ref_ns_parity <- bin_primary_alt_ref_ns %>% 
  filter( agecat=="0-24 months", !is.na(parity)) %>%
  group_by(studyid, country, parity) %>% summarise(min_n_cell=min(n_cell), n_cell=n_cell[1], n=n[1]) %>% rename(intervention_level=parity) %>% mutate(intervention_variable="parity")

bin_primary_alt_ref_ns_nhh <- bin_primary_alt_ref_ns %>% 
  filter(agecat=="0-24 months", !is.na(nhh)) %>%
  group_by(studyid, country, nhh ) %>% summarise(min_n_cell=min(n_cell), n_cell=n_cell[1], n=n[1]) %>% rename(intervention_level=nhh) %>% mutate(intervention_variable="nhh")

bin_primary_alt_ref_ns_nrooms <- bin_primary_alt_ref_ns %>% 
  filter( agecat=="0-24 months", !is.na(nrooms)) %>%
  group_by(studyid, country, nrooms) %>% summarise(min_n_cell=min(n_cell), n_cell=n_cell[1], n=n[1]) %>% rename(intervention_level=nrooms) %>% mutate(intervention_variable="nrooms")

bin_primary_alt_ref_ns_sga <- bin_primary_alt_ref_ns %>% 
  filter( agecat=="0-24 months (no birth st.)"|agecat=="0-24 months (no birth wast)", !is.na(sga)) %>%
  group_by(studyid, country, sga) %>% summarise(min_n_cell=min(n_cell), n_cell=n_cell[1], n=n[1]) %>% rename(intervention_level=sga) %>% mutate(intervention_variable="sga")
bin_primary_alt_ref_ns <- bind_rows(bin_primary_alt_ref_ns_parity, bin_primary_alt_ref_ns_nhh, bin_primary_alt_ref_ns_nrooms, bin_primary_alt_ref_ns_sga)
 
bin_primary_alt_ref <- left_join(bin_primary_alt_ref, bin_primary_alt_ref_ns, by =c("studyid", "country","intervention_variable","intervention_level"))
bin_primary_alt_ref <- bin_primary_alt_ref %>% group_by(studyid, country, intervention_variable) %>% mutate(min_n_cell=ifelse(is.na(min_n_cell),min(min_n_cell, na.rm=T),min_n_cell)) #minimum N's for prevalence
bin_primary_alt_ref <- bin_primary_alt_ref %>% group_by(intervention_variable, intervention_level, agecat, outcome_variable, type) %>% mutate(n_cell=sum(n_cell,na.rm=T), n=sum(n,na.rm=T)) #minimum N's for prevalence
unique(bin_primary_alt_ref$intervention_variable)

#save subset for PAF
saveRDS(bin_primary_alt_ref, paste0(BV_dir,"/results/rf results/bin_primary_alt_ref_subset.rds"))


bin_primary_alt_ref <- bin_primary_alt_ref %>% filter(type=="RR", untransformed_se!=0)



d <- bind_rows(dfull, bin_primary_alt_ref) 
unique(d$intervention_variable)


#drop morbidity and mortality analysis
d <- d %>% filter(outcome_variable!="dead" & outcome_variable!="co_occurence" & outcome_variable!="pers_wasted624", !(intervention_variable=="nrooms" & baseline_level=="1"))


#Drop reference levels and sparse estimates
d <- d %>% filter(intervention_level != d$baseline_level)  %>% filter(min_n_cell>=10)


#Drop duplicated (unadjusted sex and month variables)
dim(d)
d <- distinct(d)
dim(d)

d <- droplevels(d)


#Subset agecat
d <- droplevels(d)
head(d)
d <- mark_region(d)

unique(d$intervention_variable)


RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, n_cell, n, adjusted) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest$region <- "Pooled"
RMAest

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable, n_cell, n, adjusted) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)

unique(RMAest_raw$intervention_level)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)

unique(RMAest_clean$intervention_level)

#Add reference level to label
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)

#Save cleaned data
saveRDS(RMAest_clean, paste0(BV_dir,"/results/rf results/pooled_RR_results_alt_ref.rds"))
