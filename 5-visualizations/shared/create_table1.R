


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

tab1_shell <- read.csv(here("data/HBGDki-tab1-shell.csv"))

#remove grant identifiers from studyid
tab1_shell$studyid <- gsub("^k.*?-" , "", tab1_shell$studyid)
#correct CMIN studyid
tab1_shell$studyid[tab1_shell$studyid=="CMIN"] <- tab1_shell$study[tab1_shell$studyid=="CMIN"]
tab1_shell$studyid[tab1_shell$studyid=="CMIN93"] <- "CMIN Bangladesh93"
tab1_shell$studyid[tab1_shell$studyid=="iLiNS-DYA"] <- "iLiNS-DYAD-M"
tab1_shell$country[tab1_shell$country=="GUINEA BISSAU"] <- "GUINEA-BISSAU"
tab1_shell$country[tab1_shell$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"



cc_tab1_Ns <- readRDS(paste0(BV_dir,"/results/cc_table1.rds"))
stunt_tab1_Ns <- readRDS(paste0(BV_dir,"/results/stunt_table1.rds"))
wast_tab1_Ns <- readRDS(paste0(BV_dir,"/results/wast_table1.rds"))

tab1_shell$studyid
cc_tab1_Ns$studyid

head(tab1_shell)
head(stunt_tab1_Ns)
stunt_tab1 <- left_join(tab1_shell, stunt_tab1_Ns, by = c("studyid","country"))
head(stunt_tab1)



wast_tab1 <- left_join(tab1_shell, wast_tab1_Ns, by = c("studyid","country"))
cc_tab1 <- left_join(tab1_shell, cc_tab1_Ns, by = c("studyid","country"))

temp <- full_join(tab1_shell, cc_tab1_Ns, by = c("studyid","country")) #%>% arrange(country, study)


#Select studies and order columns
wast_tab1 <- wast_tab1 %>% 
  filter(wasting==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
wast_tab1[is.na(wast_tab1)] <- ""


stunt_tab1 <- stunt_tab1 %>% 
  filter(stunting==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
stunt_tab1[is.na(stunt_tab1)] <- ""


cc_tab1 <- cc_tab1 %>% 
  filter(rf==1) %>%
  select("study",  "Country", "StudyYears", "Design",  "nchild", "meas_ages", "nobs", "ref") %>%
  mutate(nchild=as.character(nchild), nobs=as.character(nobs))
cc_tab1[is.na(cc_tab1)] <- ""

#format column names
colnames_vec <- c("Region, Study ID",	"Country",	"Study Years",	"Design",	"Children Enrolled*",	"Anthropometry measurement ages (months)",	"Total measurements*",	"Primary References")
colnames(wast_tab1) <- colnames_vec
colnames(stunt_tab1) <- colnames_vec
colnames(cc_tab1) <- colnames_vec

#Save as csv files
write_csv(wast_tab1, path = paste0(BV_dir,"/results/wasting_table1.csv"))
write_csv(stunt_tab1, path = paste0(BV_dir,"/results/stunting_table1.csv"))
write_csv(cc_tab1, path = paste0(BV_dir,"/results/c&c_table1.csv"))


