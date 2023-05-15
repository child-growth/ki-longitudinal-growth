
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))
library(cowplot)



yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

tableau10 <- rep("grey30",10)

scaleFUN <- function(x) sprintf("%.1f", x)



# PR
PR_raw <- readRDS(paste0(BV_dir,"/results/rf results/pooled_RR_results.rds")) %>% mutate(parameter="PR")  %>% filter(agecat=="24 months", outcome_variable == "stunted" | outcome_variable == "wasted", region=="Pooled")


#Subset to last age examined
df <- df %>% filter(agecat=="6-24 months" | agecat=="24 months", region=="Pooled") %>%
  mutate(RFlabel_ref = paste0(RFlabel," (ref. ", baseline_level,")"))
unique(df$RFlabel_ref)

df <- readRDS(paste0(BV_dir,"/results/rf results/pooled_PAF_results.rds"))
df <- df %>% filter(!(intervention_variable %in% c("anywast06","enstunt","enwast","pers_wast")),
                    outcome_variable %in% c("ever_stunted","ever_wasted"))





table(df$intervention_level)
df[df$intervention_level==">=35",]
df[df$intervention_level==">=38",]

unique(df$outcome_variable)
df$outcome_variable <- gsub("ever_stunted", "Ever stunted", df$outcome_variable)
df$outcome_variable <- gsub("ever_wasted", "Ever wasted", df$outcome_variable)



unique(df$intervention_level)
unique(df$intervention_variable)
df$intervention_level <- as.character(df$intervention_level)
df$intervention_level[df$intervention_level=="Full or late term"] <- "Full/late term"
df$intervention_level[df$intervention_level=="[0%, 2%]"] <- "[0%,2%]"
df$intervention_level[df$intervention_level=="No" & !(df$intervention_variable %in% c("enwast","enstunt"))] <- "None"
df$intervention_level[df$intervention_variable %in% c("enwast","enstunt")] <- "No"
df$intervention_level[df$intervention_level=="Yes"] <- "All"
df$intervention_level[df$intervention_level=="Normal weight"] <- ">=18.5 BMI"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("brthmon","month")] <- "Jan."
df$intervention_level[df$intervention_level=="0" & df$intervention_variable %in% c("single")] <- "dftnered"
df$intervention_level[df$intervention_level=="1" & df$intervention_variable %in% c("dfity")] <- "Firstborn"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("vagbrth")] <- "C-section"
df$intervention_level[df$intervention_level=="None" & df$intervention_variable %in% c("hdlvry")] <- "No"

df$RFlabel[df$RFlabel=="Diarrhea <24 mo.  (% days"] <- "Diarrhea <24mo. (% days)"
df$RFlabel[df$RFlabel=="Diarrhea <6 mo. (% days)"] <- "Diarrhea <6mo. (% days)"
df$RFlabel[df$RFlabel=="Gestational age at birth"] <- "Gestational age"



all_vars <- unique(df$intervention_variable)
df <- df %>% filter( agecat=="0-24 months" | intervention_variable %in% c("perdiar6","predexfd6") & agecat=="6-24 months", 
                     region=="Pooled", !is.na(PAF)) %>%
  mutate(RFlabel_ref = paste0(RFlabel," shifted to ", intervention_level))
sub_vars <- unique(df$intervention_variable)
all_vars[!(all_vars %in% sub_vars)]

temp<-df[df$intervention_variable=="fage"&!is.na(df$intervention_variable),]
temp


unique(df$RFlabel_ref)

df <- df %>% subset(., select = c(outcome_variable, intervention_variable, PAF, PAF.CI1, PAF.CI2, RFtype, RFlabel, RFlabel_ref, n_cell, n)) %>% 
  filter(!is.na(PAF)) %>% mutate(measure="PAF")



#----------------------------------------------------------
# Plot PAFameters
#----------------------------------------------------------


yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Colors
color_vec = c("#7F7F7F", "#E377C2")



#----------------------------------------------------------
# Clean up plot dataframe
#----------------------------------------------------------



dpool <- df %>% ungroup() %>%
  filter(outcome_variable %in% c("Ever stunted", "Ever wasted" ),
         !is.na(intervention_variable)) %>%
  mutate(ref_prev=n_cell/n) %>%
  group_by(intervention_variable, 
           outcome_variable) 

dpool <- dpool %>%
  mutate(
    RFgroup = case_when(RFtype %in% c("Household","SES","WASH", "Time") ~ "Household & Environmental Characteristics",
                        RFtype %in% c("Parent background","Parent anthro" ) ~ "Parental Characteristics",
                        RFtype %in% c("Postnatal child health", "Breastfeeding") ~ "Postnatal child characteristics",
                        RFtype==RFtype ~ "At-birth child characteristics"),
    RFgroup = factor(RFgroup, levels = (c("At-birth child characteristics", "Postnatal child characteristics",  
                                          "Parental Characteristics", "Household & Environmental Characteristics")))) 

#get effect of strongest RF
dres <- dpool %>% filter(outcome_variable!="waz",
                        intervention_variable %in% c("birthlen","meduyrs",
                                                     "mbmi", "mhtcm")) %>%
  arrange(outcome_variable, PAF)

#----------------------------------------------------------
# Plot LAZ PAF
#----------------------------------------------------------

plotdf_stunt <- dpool %>% filter(outcome_variable=="Ever stunted") %>%
  arrange(PAF) 
rflevels = unique(plotdf_stunt$RFlabel_ref)
plotdf_stunt$RFlabel_ref=factor(plotdf_stunt$RFlabel_ref, levels=rflevels)


pPAF_stunt <- ggplot(plotdf_stunt, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=PAF),  size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2)) +
  coord_flip() +
  labs(x = NULL,
       y = "Attributable fraction (%) in\nstunting cumulative incidence") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5)) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Stunting cumulative incidence\nfrom 0-24 months") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAF_stunt




plotdf_wast <- dpool %>% filter(outcome_variable=="Ever wasted") %>%
  arrange(PAF) 
rflevels = unique(plotdf_wast$RFlabel_ref)
plotdf_wast$RFlabel_ref=factor(plotdf_wast$RFlabel_ref, levels=rflevels)
tail(plotdf_wast)


pPAF_wast <- ggplot(plotdf_wast, aes(x=RFlabel_ref, group=RFgroup, color=RFgroup)) + 
  geom_point(aes(y=PAF),  size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2)) +
  coord_flip() +
  labs(x = NULL,
       y = "Attributable fraction (%) in\nwasting cumulative incidence") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks = c(-0.2,-0.1,0,0.1,0.2,0.3,0.4, 0.5)) +
  scale_color_manual(values = cbbPalette[c(6,3,2,4)], guide = guide_legend(reverse = TRUE) ) +
  theme(strip.background = element_blank(),
        strip.placement = "top",
        strip.text = element_text(hjust = 0, size=12,  face="bold"),
        axis.text.y = element_text(size=10, hjust = 1),
        axis.text.x = element_text(size=12),
        #axis.title.x = element_text(hjust = 1),
        plot.title = element_text(hjust = 0),
        plot.margin = unit(c(0, 0, 0, 0), "cm")) +
  guides(shape=FALSE) + 
  ggtitle("Wasting cumulative incidence\nfrom 0-24 months") +
  ggforce::facet_col(facets = vars(RFgroup), 
                     scales = "free_y", 
                     space = "free") 
pPAF_wast





ggsave(pPAF_stunt, file=paste0(BV_dir,"/figures/risk-factor/fig-stunt-ci-PAF.png"), height=10, width=8)
ggsave(pPAF_wast, file=paste0(BV_dir,"/figures/risk-factor/fig-wast-ci-PAF.png"), height=10, width=8)

save(pPAF_stunt, pPAF_wast, file=paste0(BV_dir,"/results/rf results/rf_paf_plot_objects.Rdata"))


plot_PAF = plot_grid(pPAF_stunt, pPAF_wast, labels = c("A","B"), ncol = 2, nrow = 1)

ggsave(plot_PAF, file=paste0(BV_dir, "/figures/manuscript-figure-composites/risk-factor/extended-data/fig-PAF.png"), height=14, width=14)



