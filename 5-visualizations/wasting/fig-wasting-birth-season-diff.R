


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load longbow results
results <- readRDS(paste0(BV_dir,"/results/rf results/longbow results/seasonality_birth_results.RDS"))
Ns <- readRDS(paste0(BV_dir,"/results/rf results/raw longbow results/seasonality_birth_results_obs_counts_2021-06-05.RDS")) %>%
  rename(intervention_level=brthmon)

d <- results %>% filter(type=="ATE")
d <- left_join(d, Ns, by=c("studyid", "country", "intervention_level","outcome_variable"))
table(d$n_cell)
d <- d %>% filter(n_cell >=10, baseline_level=="1")

d[d$intervention_level=="8",]





RMAest <- d %>% group_by(intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(., method="REML")) %>% as.data.frame()
RMAest$seasonality_category <- "Pooled"



df <- RMAest



#Add reference level to labe
df$RFlabel <- "Month of birth"
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: Jan.")

df$baseline_level <- "Jan."
df$intervention_level[df$intervention_level=="1"] <- "Jan."
df$intervention_level[df$intervention_level=="2"] <- "Feb."
df$intervention_level[df$intervention_level=="3"] <- "Mar."
df$intervention_level[df$intervention_level=="4"] <- "Apr."
df$intervention_level[df$intervention_level=="5"] <- "May"
df$intervention_level[df$intervention_level=="6"] <- "Jun."
df$intervention_level[df$intervention_level=="7"] <- "Jul."
df$intervention_level[df$intervention_level=="8"] <- "Aug."
df$intervention_level[df$intervention_level=="9"] <- "Sep."
df$intervention_level[df$intervention_level=="10"] <- "Oct."
df$intervention_level[df$intervention_level=="11"] <- "Nov."
df$intervention_level[df$intervention_level=="12"] <- "Dec."


df$intervention_level <- factor(df$intervention_level, 
                                levels=c("Jan.", "Feb.","Mar.","Apr.","May","Jun.","Jul.","Aug.","Sep.","Oct.","Nov.", "Dec."))

#mark reference points
df$ref <- ifelse(df$intervention_level=="Jan.", "Ref.", NA)


p_season_birth_diff <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=seasonality_category, ymin=CI1, ymax=CI2), width = 0) +
  geom_point(aes(fill=seasonality_category, color=seasonality_category), size = 3) +
  geom_text(aes(label=ref), hjust = 0, vjust=0, nudge_y = 0.08) +
  scale_color_manual(values=tableau11[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure)) +
  geom_hline(yintercept = 0) + 
  xlab("")+
  ylab("WLZ difference") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 5))  +
  scale_x_discrete(labels = c("Jan.","", "Mar.","",  "May","",  "Jul.","",  "Sep.","",  "Nov.", "")) +
theme(panel.background=element_blank(), 
      panel.spacing = unit(c(0, 0, 0, 0), "cm"),       
      axis.title.x=element_blank(), 
      legend.position = 'none') +
  labs(x=NULL)
p_season_birth_diff



saveRDS(p_season_birth_diff, file = paste0(BV_dir,"/figures/plot-objects/season_birth_wlz_diff_plot.rds"))
ggsave(p_season_birth_diff, file= paste0(BV_dir,"/figures/wasting/season_birth_wlz_diff.png"), width=5, height=4)



#Create fixed-effects version
RMAest <- d %>% group_by(intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(., method="FE")) %>% as.data.frame()
RMAest$seasonality_category <- "Pooled"



df <- RMAest



#Add reference level to labe
df$RFlabel <- "Month of birth"
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: Jan.")

df$baseline_level <- "Jan."
df$intervention_level[df$intervention_level=="1"] <- "Jan."
df$intervention_level[df$intervention_level=="2"] <- "Feb."
df$intervention_level[df$intervention_level=="3"] <- "Mar."
df$intervention_level[df$intervention_level=="4"] <- "Apr."
df$intervention_level[df$intervention_level=="5"] <- "May"
df$intervention_level[df$intervention_level=="6"] <- "Jun."
df$intervention_level[df$intervention_level=="7"] <- "Jul."
df$intervention_level[df$intervention_level=="8"] <- "Aug."
df$intervention_level[df$intervention_level=="9"] <- "Sep."
df$intervention_level[df$intervention_level=="10"] <- "Oct."
df$intervention_level[df$intervention_level=="11"] <- "Nov."
df$intervention_level[df$intervention_level=="12"] <- "Dec."


df$intervention_level <- factor(df$intervention_level, 
                                levels=c("Jan.", "Feb.","Mar.","Apr.","May","Jun.","Jul.","Aug.","Sep.","Oct.","Nov.", "Dec."))

#mark reference points
df$ref <- ifelse(df$intervention_level=="Jan.", "Ref.", NA)


p_season_birth_diff_FE <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=seasonality_category, ymin=CI1, ymax=CI2), width = 0) +
  geom_point(aes(fill=seasonality_category, color=seasonality_category), size = 3) +
  geom_text(aes(label=ref), hjust = 0, vjust=0, nudge_y = 0.08) +
  scale_color_manual(values=tableau11[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure)) +
  coord_cartesian(ylim=c(-1, 0.2)) +
  geom_hline(yintercept = 0) + 
  xlab("")+
  ylab("WLZ difference") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 5))  +
  scale_x_discrete(labels = c("Jan.","", "Mar.","",  "May","",  "Jul.","",  "Sep.","",  "Nov.", "")) +
 
  theme(panel.background=element_blank(), 
        panel.spacing = unit(c(0, 0, 0, 0), "cm"),       
        axis.title.x=element_blank(), 
        legend.position = 'none') +
  labs(x=NULL)




saveRDS(p_season_birth_diff_FE, file = paste0(BV_dir,"/figures/plot-objects/season_birth_wlz_diff_plot_FE.rds"))
ggsave(p_season_birth_diff_FE, file=paste0(BV_dir,"/figures/wasting/season_birth_wlz_diff_FE.png"), width=5, height=4)


#Get I2 median/IQR
df %>% 
  summarise(quantile = c("Median","Q1", "Q3"),
            I2 = quantile(I2, c(0.5, 0.25, 0.75), na.rm=TRUE)) %>%
  spread(quantile, I2) 


