

rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

d <- readRDS(wasting_data_path) %>% filter(measurefreq == "monthly", agedays < 730)

#Only include children with at least 2 measures
d <- d %>% group_by(studyid, country, subjid) %>% mutate(N=n()) %>% filter(N >= 2)


#Subset to monthly
d <- d %>% filter(measurefreq == "monthly") %>% filter(agedays < 730)

#look at proportion of episodes wasted
head(d)
d_propinc <- d %>% filter(!is.na(whz)) %>% group_by(studyid, subjid, region) %>% summarise(prop_wast=mean(whz < (-2))*100)
summary(d_propinc$prop_wast)


temp <- d_propinc %>% mutate(region="Overall")
plotdf <- bind_rows(d_propinc, temp) %>% mutate(region=factor(region, levels=c("Overall","Africa","Latin America","South Asia")))


p <- ggplot(plotdf, aes(x = prop_wast, color=region, fill=region)) +  
  geom_histogram(aes(y = stat(density) * 500), binwidth = 5) + 
  #facet_wrap(~region, scales = "free") +   
  facet_wrap(~region, nrow=1) +   
  ylab("Percent of children") + 
  xlab("Percent of measurements where child was wasted") +
  scale_x_continuous(expand=c(0,0), breaks=c(0,20,40,60,80)) +
  scale_y_continuous(expand = expansion(add = c(0, 5))) +
  #scale_y_continuous(expand=c(0.1,0.1)) +
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) + 
  scale_fill_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C")) + 
  theme_ki() 


# save plot 
ggsave(p, file=paste0(BV_dir,"/figures/wasting/fig-supp-5b-wast-prop-histogram.png"), width=6, height=5)


