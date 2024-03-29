

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(ggmap)
require(cowplot)



#Figure 3
p_severecomp <- readRDS(paste0(BV_dir,"/results/fig-severe-outcome-comps.RDS"))[[1]]
p_ageRR <- readRDS(paste0(BV_dir,"/results/fig-age-strat-wast-plot-objects.RDS"))[[1]]
splines <- readRDS(paste0(BV_dir,"/figures/plot-objects/risk-factor/rf_spline_objects.RDS"))

pos2 = pos = c(0.3,0.16)

p2 <- splines[[2]]  + ggtitle("") + theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_y_continuous(limits=c(-1, 0.25), breaks = seq(-1.2, 0.45, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank()) 
p4 <- splines[[4]]  + ggtitle("") +  theme(legend.position = pos, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) +guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank())  +scale_y_continuous(limits=c(-2.4, -0.6), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p5 <- splines[[6]]  + ggtitle("") + theme(legend.position = pos, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nBMI", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank(), legend.background = element_blank()) +scale_y_continuous(limits=c(-2.4, -0.6), breaks = seq(-2.4, -0.4, 0.2), labels = round(seq(-2.4, -0.4, 0.2),1)) 
p6 <- splines[[5]]  + ggtitle("") +  
  theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) + 
  guides(color = guide_legend("Maternal\nBMI", nrow=3)) + 
  scale_y_continuous(limits=c(-1, 0.25), breaks = seq(-1.2, 0.45, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + 
  scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + 
  theme(legend.key = element_blank(), legend.background = element_blank()) 

#Titles
titleA <- ggdraw() + draw_label("Stratified by maternal height", fontface='bold')
titleB <- ggdraw() + draw_label("Stratified by maternal weight", fontface='bold')
titleC <- ggdraw() + draw_label("Stratified by maternal BMI", fontface='bold')

#Faceted plots
Twoby1plotA <- plot_grid(p4, p2, labels = c("",""), ncol = 2)
Twoby1plotC <- plot_grid(p5, p6, labels = c("",""), ncol = 2)

Twoby1plotA_t <- plot_grid(titleA, Twoby1plotA, ncol=1, rel_heights=c(0.1, 1.5))
Twoby1plotC_t <- plot_grid(titleC, Twoby1plotC, ncol=1, rel_heights=c(0.1, 1,5))

Twoby1plot <- plot_grid(Twoby1plotA_t,  Twoby1plotC_t, labels = "auto", ncol = 2, align = 'v', axis = 'l')


fig3 <- plot_grid(Twoby1plot, p_ageRR, p_severecomp, labels = c("","c","d"), ncol = 1, align = 'h', axis = 'l', rel_heights=c(1,2,1))
ggsave(fig3, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig3.png"), width=14, height=15)






#Figure 4
p_earlywast <- readRDS(paste0(BV_dir,"/figures/plot-objects/risk-factor/fig-wasting-prior-to-stunting.rds"))
plotdf2 <- readRDS(paste0(BV_dir,"/figures/risk-factor/figure-data/fig-wasting-prior-to-stunting.rds"))
plen_lagwhz <- readRDS(paste0(BV_dir,"/figures/plot-objects/risk-factor/fig-WLZ-quart-len-vel.rds"))
pmort <- readRDS(paste0(BV_dir,"/results/rf_mort+morb-no-overlap_plots-seperated_objects.RDS"))
fig4a <- plot_grid(plen_lagwhz, p_earlywast, labels = "auto", ncol = 2, align = 'v', axis = 'l', rel_widths=c(2,1))


pmort_comb = plot_grid(pmort[[2]], pmort[[1]], labels = c("c","d"),  nrow = 1, align = 'v', axis = 'l', rel_widths = c(1.5, 1))
fig4  <- plot_grid(fig4a, pmort_comb, labels = c("",""), ncol = 1, rel_heights = c(1,1), align = 'h', axis = 'l')

ggsave(fig4, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/fig4.png"), width=18.3/1.25, height=9/1.25)



#Extended data figure 3
load(paste0(BV_dir,"/results/rf results/rf_paf_plot_objects.Rdata"))
p3 <- pPAF_stunt + xlab("") + theme(axis.text = element_text(size=12))
p4 <- pPAF_wast + xlab("") + theme(axis.text = element_text(size=12))

ext_fig3 <- plot_grid(p3, p4, labels = "auto", ncol = 2, align = 'v', axis = 'l')
ggsave(ext_fig3, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/extended_data_fig3.png"), width=18.3, height=8)

