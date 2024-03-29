



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))
#co <- readRDS(rf_co_occurrence_path)


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

#merge in country metrics
birthyears <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metrics.rds") %>% select(studyid, country, brthyr, subjid) %>% distinct()
country <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories_wasting.rds")

country <- country %>% subset(., select=c(country, brthyr, decade:mort_cat)) %>% distinct()

dim(d)
d <- left_join(d, birthyears, by = c("studyid", "country",  "subjid"))
dim(d)


dim(d)
d <- left_join(d, country, by = c("country",  "brthyr"))
dim(d)

#Get birth size:
d <- d %>% group_by(studyid, subjid) %>% arrange(agedays) %>% 
  mutate(birth_wlz =first(whz), first_age=first(agedays), birth_wlz=ifelse(first_age>31, NA, birth_wlz)) 

table(is.na(d$birth_wlz))
table(d$studyid)
summary(d$birth_wlz)
d$birth_wlz_cat <- cut(d$birth_wlz, breaks=c(-5, -2, -1, 0 ,5), include.lowest = T, right=T)
table(d$birth_wlz_cat)
prop.table(table(d$birth_wlz_cat))*100
prop.table(table(d$birth_laz_cat))*100


#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>% 
  subset(., select = c(studyid, subjid, birthwt)) %>% 
  filter(!is.na(birthwt)) %>% droplevels()

d <- left_join(d, cov,by=c("studyid", "subjid"))
table(d$birthwt)




#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.whz(d)
prev.decade <- d %>% group_by(decade) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="decade") %>% rename(cat.level=decade)
prev.gdp <- d %>% group_by(gdp_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="gdp") %>% rename(cat.level=gdp_cat)
prev.gdi <- d %>% group_by(gdi_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="gdi") %>% rename(cat.level=gdi_cat)
prev.gii <- d %>% group_by(gii_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="gii") %>% rename(cat.level=gii_cat)
prev.chi <- d %>% group_by(chi_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="chi") %>% rename(cat.level=chi_cat)
prev.gini <- d %>% group_by(gini_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="gini") %>% rename(cat.level=gini_cat)
prev.he <- d %>% group_by(he_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="ghe") %>% rename(cat.level=he_cat)
prev.pov <- d %>% group_by(pov_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="pov") %>% rename(cat.level=pov_cat)

prev.birth.wlz <- d %>% filter(!is.na(birth_wlz_cat)) %>% group_by(birth_wlz_cat) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="birth_wlz_cat") %>% rename(cat.level=birth_wlz_cat)
prev.birthwt <- d %>% filter(!is.na(birthwt)) %>% group_by(birthwt) %>% do(summary.prev.whz(.)$prev.res) %>% mutate(country.cat="birthwt") %>% rename(cat.level=birthwt)
prev.dead <- d %>% filter(!is.na(mort_cat)) %>% droplevels() %>% group_by(mort_cat) %>% do(res=summary.prev.whz(.)$prev.res) %>% mutate(country.cat="mort_cat") %>% rename(cat.level=mort_cat)



prev <- bind_rows(
  data.frame(cohort = "pooled", cat.level = "Overall", prev.data$prev.res),
  data.frame(cohort = "pooled", prev.decade),
  data.frame(cohort = "pooled", prev.gdp),
  data.frame(cohort = "pooled", prev.gdi),
  data.frame(cohort = "pooled", prev.gii),
  data.frame(cohort = "pooled", prev.chi),
  data.frame(cohort = "pooled", prev.gini),
  data.frame(cohort = "pooled", prev.he),
  data.frame(cohort = "pooled", prev.birth.wlz),
  data.frame(cohort = "pooled", prev.birthwt),
  data.frame(cohort = "pooled", prev.dead),
  data.frame(cohort = "pooled", prev.pov))

prev <- prev %>% mutate(region="NA")


prev$agecat <- factor(prev$agecat, levels=unique(prev$agecat))





#Cumulative inc 3 month intervals
d3 <- calc.ci.agecat(d, range = 3, birth = "no")


#Cumulative inc
ci.data <- summary.wast.ci(d3, age.range=3)
ci.decade <- d3 %>% group_by(decade) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="decade") %>% rename(cat.level=decade)
ci.gdp <- d3 %>% group_by(gdp_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="gdp") %>% rename(cat.level=gdp_cat)
ci.gdi <- d3 %>% group_by(gdi_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="gdi") %>% rename(cat.level=gdi_cat)
ci.gii <- d3 %>% group_by(gii_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="gii") %>% rename(cat.level=gii_cat)
ci.chi <- d3 %>% group_by(chi_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="chi") %>% rename(cat.level=chi_cat)
ci.gini <- d3 %>% group_by(gini_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="gini") %>% rename(cat.level=gini_cat)
ci.he <- d3 %>% group_by(he_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="ghe") %>% rename(cat.level=he_cat)
ci.pov <- d3 %>% group_by(pov_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="pov") %>% rename(cat.level=pov_cat)

ci.birth.wlz <- d3 %>% filter(!is.na(birth_wlz_cat)) %>% group_by(birth_wlz_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="birth_wlz_cat") %>% rename(cat.level=birth_wlz_cat)
ci.birthwt <- d3 %>% filter(!is.na(birthwt)) %>% group_by(birthwt) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="birthwt") %>% rename(cat.level=birthwt)
ci.dead <- d3 %>% filter(!is.na(mort_cat)) %>% group_by(mort_cat) %>% do(summary.wast.ci(., age.range=3)$ci.res) %>% mutate(country.cat="mort_cat") %>% rename(cat.level=mort_cat)

summary.wast.ci(d3[d3$mort_cat==">80 per 100,000",], age.range=3)$ci.res


ci <- bind_rows(
  data.frame(cohort = "pooled", cat.level = "Overall", ci.data$ci.res),
  data.frame(cohort = "pooled", ci.decade),
  data.frame(cohort = "pooled", ci.gdp),
  data.frame(cohort = "pooled", ci.gdi),
  data.frame(cohort = "pooled", ci.gii),
  data.frame(cohort = "pooled", ci.chi),
  data.frame(cohort = "pooled", ci.gini),
  data.frame(cohort = "pooled", ci.he),
  data.frame(cohort = "pooled", ci.birth.wlz),
  data.frame(cohort = "pooled", ci.birthwt),
  data.frame(cohort = "pooled", ci.dead),
  data.frame(cohort = "pooled", ci.pov))

ci <- ci %>% mutate(region="NA")


#Incidence proportions 3 month intervals
ip.data <- summary.incprop(d3)

ip.decade <- d3 %>% group_by(decade) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="decade") %>% rename(cat.level=decade)
ip.gdp <- d3 %>% group_by(gdp_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="gdp") %>% rename(cat.level=gdp_cat)
ip.gdi <- d3 %>% group_by(gdi_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="gdi") %>% rename(cat.level=gdi_cat)
ip.gii <- d3 %>% group_by(gii_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="gii") %>% rename(cat.level=gii_cat)
ip.chi <- d3 %>% group_by(chi_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="chi") %>% rename(cat.level=chi_cat)
ip.gini <- d3 %>% group_by(gini_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="gini") %>% rename(cat.level=gini_cat)
ip.he <- d3 %>% group_by(he_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="ghe") %>% rename(cat.level=he_cat)
ip.pov <- d3 %>% group_by(pov_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="pov") %>% rename(cat.level=pov_cat)
ip.birth.wlz <- d3 %>% filter(!is.na(birth_wlz_cat)) %>% group_by(birth_wlz_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="birth_wlz_cat") %>% rename(cat.level=birth_wlz_cat)
ip.birthwt <- d3 %>% filter(!is.na(birthwt)) %>% group_by(birthwt) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="birthwt") %>% rename(cat.level=birthwt)
ip.dead <- d3 %>% filter(!is.na(mort_cat)) %>% group_by(mort_cat) %>% do(summary.incprop(.)$ci.res) %>% mutate(country.cat="mort_cat") %>% rename(cat.level=mort_cat)



ip <- bind_rows(
  data.frame(cohort = "pooled", cat.level = "Overall", ip.data$ci.res),
  data.frame(cohort = "pooled", ip.decade),
  data.frame(cohort = "pooled", ip.gdp),
  data.frame(cohort = "pooled", ip.gdi),
  data.frame(cohort = "pooled", ip.gii),
  data.frame(cohort = "pooled", ip.chi),
  data.frame(cohort = "pooled", ip.gini),
  data.frame(cohort = "pooled", ip.he),
  data.frame(cohort = "pooled", ip.birth.wlz),
  data.frame(cohort = "pooled", ip.birthwt),
  data.frame(cohort = "pooled", ip.dead),
  data.frame(cohort = "pooled", ip.pov))

ip <- ip %>% mutate(region="NA")


#Get cohort-specific incidence proportion
ip.decade.cohort <- d3 %>% group_by(decade) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="decade") %>% rename(cat.level=decade)
ip.gdp.cohort <- d3 %>% group_by(gdp_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="gdp") %>% rename(cat.level=gdp_cat)
ip.gdi.cohort <- d3 %>% group_by(gdi_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="gdi") %>% rename(cat.level=gdi_cat)
ip.gii.cohort <- d3 %>% group_by(gii_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="gii") %>% rename(cat.level=gii_cat)
ip.chi.cohort <- d3 %>% group_by(chi_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="chi") %>% rename(cat.level=chi_cat)
ip.gini.cohort <- d3 %>% group_by(gini_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="gini") %>% rename(cat.level=gini_cat)
ip.he.cohort <- d3 %>% group_by(he_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="ghe") %>% rename(cat.level=he_cat)
ip.pov.cohort <- d3 %>% group_by(pov_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="pov") %>% rename(cat.level=pov_cat)
ip.birth.wlz.cohort <- d3 %>% filter(!is.na(birth_wlz_cat)) %>% group_by(birth_wlz_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="birth_wlz_cat") %>% rename(cat.level=birth_wlz_cat)
ip.birthwt.cohort <- d3 %>% filter(!is.na(birthwt)) %>% group_by(birthwt) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="birthwt") %>% rename(cat.level=birthwt)
ip.dead.cohort <- d3 %>% filter(!is.na(mort_cat)) %>% group_by(mort_cat) %>% do(summary.incprop(.)$ci.cohort) %>% mutate(country.cat="mort_cat") %>% rename(cat.level=mort_cat)


ip.cohort <- bind_rows(
  data.frame(cohort = "pooled", cat.level = "Overall", ip.data$ci.cohort),
  data.frame(cohort = "pooled", ip.decade.cohort),
  data.frame(cohort = "pooled", ip.gdp.cohort),
  data.frame(cohort = "pooled", ip.gdi.cohort),
  data.frame(cohort = "pooled", ip.gii.cohort),
  data.frame(cohort = "pooled", ip.chi.cohort),
  data.frame(cohort = "pooled", ip.gini.cohort),
  data.frame(cohort = "pooled", ip.he.cohort),
  data.frame(cohort = "pooled", ip.birth.wlz.cohort),
  data.frame(cohort = "pooled", ip.birthwt.cohort),
  data.frame(cohort = "pooled", ip.dead.cohort),
  data.frame(cohort = "pooled", ip.pov.cohort))

ip.cohort <- ip.cohort %>% mutate(region="NA")


#Incidence rate - 3 month intervals
ir.data <- summary.ir(d3)
ir.decade <- d3 %>% group_by(decade) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="decade") %>% rename(cat.level=decade)
ir.gdp <- d3 %>% group_by(gdp_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="gdp") %>% rename(cat.level=gdp_cat)
ir.gdi <- d3 %>% group_by(gdi_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="gdi") %>% rename(cat.level=gdi_cat)
ir.gii <- d3 %>% group_by(gii_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="gii") %>% rename(cat.level=gii_cat)
ir.chi <- d3 %>% group_by(chi_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="chi") %>% rename(cat.level=chi_cat)
ir.gini <- d3 %>% group_by(gini_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="gini") %>% rename(cat.level=gini_cat)
ir.he <- d3 %>% group_by(he_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="ghe") %>% rename(cat.level=he_cat)
ir.pov <- d3 %>% group_by(pov_cat) %>% do(summary.ir(.)$ir.res) %>% mutate(country.cat="pov") %>% rename(cat.level=pov_cat)


ir <- bind_rows(
  data.frame(cohort = "pooled", cat.level = "Overall", ir.data$ir.res),
  data.frame(cohort = "pooled", ir.decade),
  data.frame(cohort = "pooled", ir.gdp),
  data.frame(cohort = "pooled", ir.gdi),
  data.frame(cohort = "pooled", ir.gii),
  data.frame(cohort = "pooled", ir.chi),
  data.frame(cohort = "pooled", ir.gini),
  data.frame(cohort = "pooled", ir.he),
  # data.frame(cohort = "pooled", ir.birth.wlz),
  # data.frame(cohort = "pooled", ir.birthwt),
  data.frame(cohort = "pooled", ir.pov))

ir <- ir %>% mutate(region="NA")
 
wasting_desc_data <- bind_rows(
  data.frame(disease = "Wasting", age_range="3 months",   birth="strat", severe="no", measure= "Prevalence", prev),
  data.frame(disease = "Wasting", age_range="3 months",   birth="strat", severe="no", measure= "Cumulative incidence", ci),
  data.frame(disease = "Wasting", age_range="3 months",   birth="strat", severe="no", measure= "Incidence_proportion", ip),
  data.frame(disease = "Wasting", age_range="3 months",   birth="strat", severe="no", measure= "Incidence rate", ir)
)

wasting_desc_data <- droplevels(wasting_desc_data)


wasting_desc_data <- wasting_desc_data %>% subset(., select = -c(se, nmeas.f,  ptest.f, pt.f))

unique(wasting_desc_data$agecat)
wasting_desc_data$agecat <- factor(wasting_desc_data$agecat, levels=unique(wasting_desc_data$agecat))

unique(wasting_desc_data$region)
wasting_desc_data$region[wasting_desc_data$region=="Asia"] <- "South Asia"
wasting_desc_data$region <- factor(wasting_desc_data$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))

#Add in variable for level of pooling
wasting_desc_data <- wasting_desc_data %>%
  mutate(pooling = case_when(
    cohort != "pooled" ~ "no pooling",
    cohort == "pooled" & !is.na(country) ~ "country",
    region != "Overall" ~ "regional",
    region == "Overall" ~ "overall"
  ))

table(wasting_desc_data$pooling)
table(is.na(wasting_desc_data$pooling))


#clean country names
wasting_desc_data$country[wasting_desc_data$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
wasting_desc_data$country <- stringr::str_to_title(wasting_desc_data$country)

ip.cohort$country[ip.cohort$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"
ip.cohort$country <- stringr::str_to_title(ip.cohort$country)



saveRDS(wasting_desc_data, file = paste0(BV_dir,"/results/wasting_desc_data_country.RDS"))
saveRDS(ip.cohort, file = paste0(BV_dir,"/results/wasting_desc_data_cohort_ip_country_stats.RDS"))



