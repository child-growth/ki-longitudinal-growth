
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load data
d <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds"))  %>% mutate(pooled=1)

dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>% filter(type=="RR", intervention_level!=baseline_level ) %>% 
  select(studyid,country,intervention_variable, agecat,  intervention_level, baseline_level, outcome_variable, estimate, ci_lower,ci_upper) %>%
  rename(RR=estimate,  RR.CI1=ci_lower, RR.CI2=ci_upper) %>% mutate(pooled=0)
dfull <- RMA_clean(dfull)

d <- bind_rows(d, dfull)
head(d)
tail(d)


unique(d$outcome_variable)
d <- d %>% filter(outcome_variable %in% c("ever_stunted", "ever_wasted"),
                  agecat %in% c("0-6 months" , "6-24 months" , "0-6 months (no birth wast)"))

unique(d$intervention_variable)

#Subset agecat
d <- droplevels(d)


yticks <- c(0.25, 0.5, 0.8, 1, 1.2, 1.5, 2, 3)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

reverse_column_factors = function(table){
  table$intervention_level <<- fct_rev(table$intervention_level)
}

df <- d
df <- droplevels(df)
unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_", "Ever ", df$outcome_variable)
df$agecat[df$agecat=="0-6 months (no birth wast)"] <- "0-6 months"
df$agecat[df$agecat=="0-6 months (no birth st.)"] <- "0-6 months"


unique(df$region)
unique(df$outcome_variable)
unique(df$intervention_variable)

plotdf <- df %>% 
  filter(region!="N.America & Europe"|is.na(region),
         intervention_variable %in% c("gagebrth", "hfoodsec", "hhwealth_quart", "meducyrs", "mhtcm", "parity" ),
         outcome_variable %in% c("Ever stunted", "Ever wasted"),
         agecat %in% c("0-6 months", "6-24 months")) %>%
  filter(!is.na(intervention_variable), !is.na(agecat))


#plotdf$agecat <- factor(plotdf$agecat, levels = c("3-6 months", "6-9 months", "9-12 months", "12-15 months", "15-18 months"))
plotdf$agecat <- factor(plotdf$agecat, levels = c("0-6 months", "6-24 months"))

plotdf = plotdf %>%
  mutate(RFlabel=replace(RFlabel, RFlabel=="Gestational age at birth", "Gestational\nage at birth"),
         RFlabel=replace(RFlabel, RFlabel=="Mother's education", "Mother's\neducation"), 
         RFlabel=replace(RFlabel, RFlabel=="Mother's height", "Mother's\nheight"), 
         RFlabel=replace(RFlabel, RFlabel=="HH food security", "HH food\nsecurity"),
         intervention_level = as.character(intervention_level),
         intervention_level=replace(intervention_level, intervention_level=="Food Secure", "Food\nSecure"),
         intervention_level=replace(intervention_level, intervention_level=="Mildly Food Insecure", "Mildly Food\nInsecure"),
         intervention_level=replace(intervention_level, intervention_level=="Food Insecure", "Food\nInsecure"),
         intervention_level=replace(intervention_level, intervention_level=="Full or late term", "Full or\nlate term")
         )

plotdf <- plotdf %>% group_by(RFlabel, agecat) %>% mutate(max_Nstudies = max(Nstudies), min_Nstudies = min(Nstudies))
plotdf$Outcome <- plotdf$outcome_variable 

plotdf <- droplevels(plotdf)



pd <- position_dodge(0.4)

outcomes <- c(
  `Ever stunted` = "",
  `Ever wasted` = "")


plotdf$intervention_level <- factor(plotdf$intervention_level, levels = rev(c(
  "1","2",  "3+",  "High", "Medium", "Low", 
  "Full or\nlate term", "Early term", "Preterm", "Food\nSecure", "Mildly Food\nInsecure", "Food\nInsecure", 
  "Q4", "Q3", "Q2", "Q1", ">=150 cm", "<150 cm")))

plotdf <- plotdf %>% 
  arrange(pooled, intervention_level) %>% droplevels()

data = plotdf %>% filter(pooled==0)
min(data$RR)
max(data$RR)

set.seed(12234)
p_ageRR <- ggplot(plotdf %>% filter(region=="Pooled", pooled==1), aes(x=intervention_level, y=RR, color=Outcome)) + 
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  geom_hline(yintercept = 1) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1) +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0, alpha=0.5,
             position=position_jitter(width=0.2), data = plotdf %>% filter(pooled==0)) +
  geom_point(size = 3) +
  labs(x = "Exposure level", y = "Adjusted cumulative incidence ratio") +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     expand=c(0.05,0)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                                                                Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=10, face = "bold"),
        strip.text.y = element_text(size=10, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip(ylim = c(0.5,2.5))

print(p_ageRR)

ggsave(p_ageRR, file=paste0(BV_dir, "/figures/risk-factor/fig-age-strat-wast.png"), height=8, width=10)

saveRDS(list(p_ageRR=p_ageRR, plotdf=plotdf), file = paste0(BV_dir, "/results/fig-age-strat-wast-plot-objects.RDS"))


#Save without cohort-specific for presentation:
p_ageRR2 <- ggplot(plotdf %>% filter(region=="Pooled", RFlabel!="Mother's\nheight", pooled==1), aes(x=intervention_level, y=RR, color=Outcome)) + 
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  geom_hline(yintercept = 1) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1) +
  geom_point(size = 3) +
  labs(x = "Exposure level", y = "Adjusted cumulative incidence ratio") +
  #geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     #limits = c(0.638,2.43), 
                     expand=c(0.05,0)) +
  #coord_cartesian() +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                   Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=10, face = "bold"),
        strip.text.y = element_text(size=10, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip(ylim = c(0.75,2))

print(p_ageRR2)
ggsave(p_ageRR2, file=paste0(BV_dir, "/figures/risk-factor/fig-age-strat-wast-pres.png"), height=8, width=10)




p_ageRR_Africa <- ggplot(plotdf[plotdf$region=="Africa",], aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=RR, color=Outcome), size = 3, position = pd) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  labs(x = "Exposure level", y = "Adjusted CIR") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     limits = c(0.688,2.0), 
                     expand=c(0.05,0)) +
  coord_cartesian(ylim = c(0.8,2)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                                                                Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=8, face = "bold"),
        strip.text.y = element_text(size=8, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip()

p_ageRR_LA <- ggplot(plotdf[plotdf$region=="Latin America",], aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=RR, color=Outcome), size = 3, position = pd) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  labs(x = "Exposure level", y = "Adjusted CIR") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     limits = c(0.688,2.0), 
                     expand=c(0.05,0)) +
  coord_cartesian(ylim = c(0.8,2)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                                                                Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=8, face = "bold"),
        strip.text.y = element_text(size=8, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip()

p_ageRR_SA <- ggplot(plotdf[plotdf$region=="South Asia",], aes(x=reorder(intervention_level, desc(intervention_level)))) + 
  geom_point(aes(y=RR, color=Outcome), size = 3, position = pd) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Outcome),
                 alpha=0.5, size = 1, position = pd) +
  facet_grid(RFlabel~ Outcome + agecat, scales="free", labeller = labeller(Outcome = outcomes), switch = "y")+
  labs(x = "Exposure level", y = "Adjusted CIR") +
  geom_hline(yintercept = 1) +
  geom_text(aes(x=.7, y = 2.1, label=paste0("N studies: ",max_Nstudies)), size=2.5,  hjust=1) +
  scale_y_continuous(breaks=yticks, trans='log10', labels=scaleFUN, 
                     limits = c(0.688,2.2), 
                     expand=c(0.05,0)) +
  coord_cartesian(ylim = c(0.8,2.2)) +
  scale_colour_manual(values=tableau10[c(2,3)]) +  
  ggtitle("Stunting incidence                                                                Wasting incidence")+
  theme(strip.background = element_blank(),
        legend.position="none",
        axis.text.y = element_text(size=8, hjust = 1),
        strip.text.x = element_text(size=8, face = "bold"),
        strip.text.y = element_text(size=8, angle = 180, face = "bold"),
        strip.placement = "outside",
        axis.text.x = element_text(size=10, vjust = 0.5),
        panel.spacing = unit(0, "lines"),
        legend.box.background = element_rect(colour = "black"), 
        title = element_text(margin=margin(0,0,0,0))) +
  coord_flip()



#Region stratified
ggsave(p_ageRR_Africa, file=paste0(BV_dir, "/figures/risk-factor/fig-age-strat-wast_Africa.png"), height=8, width=10)
ggsave(p_ageRR_LA, file=paste0(BV_dir, "/figures/risk-factor/fig-age-strat-wast_LA.png"), height=8, width=10)
ggsave(p_ageRR_SA, file=paste0(BV_dir, "/figures/risk-factor/fig-age-strat-wast_SA.png"), height=8, width=10)

