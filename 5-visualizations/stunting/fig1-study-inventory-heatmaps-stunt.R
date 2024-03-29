##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# ben arnold (benarnold@berkeley.edu)
# modified by jade benjamin-chung (jadebc@berkeley.edu)
#
# create a heatmap of data availability
# for weight and height by study 
# in GHAP using meta-data
# (GHAP_metadata) that Andrew created
# using GHAPStudyMetadata.R

# inputs: GHAP_metadata_stunting.RDS

# outputs: 
# "fig-stunt_laz-2-heatmap-overall--allage-primary.png"
# "figdata-stunt_laz-2-heatmap-overall--allage-primary.RDS"
##########################################


#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#-----------------------------------
# load the meta-data table 
#-----------------------------------

dd <- readRDS(paste0(res_dir, 'KI_metadata_stunting.RDS'))
dd <- dd %>% filter(studyid!= "iLiNS-Zinc" )

assert_that(setequal(unique(dd$studyid), monthly_and_quarterly_cohorts))


#Function source
source(paste0(project_functions_dir,"/0_descriptive_epi_shared_functions.R"))


#-----------------------------------
# Do some final tidying up for the plot
#-----------------------------------


# shorten the description for a few studies


# shorten the description for a few studies
dd <- shorten_descriptions(dd)
table(dd$studyid, is.na(dd$short_description))


# # simplify Tanzania label
dd$country[dd$country=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'

# make a study-country label, and make the monthly variable into a factor
# including an anonymous label (temporary) for sharing with WHO
dd <- ungroup(dd)
dd <- mutate(dd,
             country=str_to_title(str_to_lower(country)), 
             studycountry=paste0(short_description,', ', country, ' - ', start_year)) 

dd$region[dd$region=="N.America & Europe"] <- ""
dd$region <- factor(dd$region, levels=c("South Asia","Africa","Latin America",""))



dd$studycountry[dd$studycountry=="Tanzania Child 2, Tanzania"] <- "Tanzania Child 2" 

dd <- mutate(dd,
             studycountry = factor(studycountry,
                                   levels=unique(studycountry[order(region,overall_stuntprev)]), 
                                   ordered=TRUE))

# categorize stunting prevalence
dd$stpcat <- cut(dd$stuntprev,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))
dd$stpcat <- factor(dd$stpcat)
dd$stpcat[dd$N<50] <- NA

# categorize number of observations
N_breaks <- c(1,50, 100, 250, 500, 750, 1000, 1500, 2000, 100000)
dd$ncat <- cut(dd$N,
               breaks=N_breaks,
               labels=c('<50','50-100','100-250','250-500','500-750','750-1000','1000-1500','1500-2000','>2000'))
dd$ncat <- factor(dd$ncat)

# categorize mean HAZ
summary(dd$meanhaz)
dd$hazcat <- cut(dd$meanhaz,breaks=c(-5, -3, -2.5, -2,-1.5,-1,-0.5,0,5), 
                 labels=c("<= -3","(-3,-2.5]", "(-2.5,-2]", "(-2,-1.5]", "(-1.5,-1]", "(-1,-0.5]",  "(-0.5,0]", ">0" ))
dd$hazcat[dd$N<50] <- NA


#Make cohort-specific summary dataset
dp <- dd %>% group_by(studycountry) %>% slice(1) %>%
  dplyr::select(studycountry, region, overall_nmeas, overall_stuntprev)

##Fill missing age-cohort combinations as NA so they appear as grey
table(is.na(dd))
dim(dd)

dd <- dd  %>% mutate(studycountry=factor(studycountry)) %>%
  filter(agecat!=24) %>% droplevels(.) %>%
  tidyr::expand(agecat, studycountry, region) %>%
  left_join(dd, by = c("agecat", "studycountry", "region")) %>%
  group_by(studycountry, region) %>%
  mutate(N_missing_ages=sum(is.na(hazcat))) %>%
  filter(N_missing_ages!=24) %>%
  droplevels(.) %>% 
  ungroup()

dd$hazcat = as.character(dd$hazcat)
dd$hazcat = ifelse(is.na(dd$hazcat), "Fewer than 50\nobservations", dd$hazcat)
dd$hazcat<- factor(dd$hazcat, levels = c("(-3,-2.5]", "(-2.5,-2]", "(-2,-1.5]",
                                         "(-1.5,-1]", "(-1,-0.5]", "(-0.5,0]",
                                         ">0", "Fewer than 50\nobservations"))



dd <- dd %>% 
  group_by(region) %>%
  dplyr::arrange(stuntprev, .by_group = TRUE) 
dd$studycountry <- sapply(dd$studycountry, function(x) as.character(x))
dd$studycountry <- factor(dd$studycountry, levels = unique(dd$studycountry))



#-----------------------------------
# Basic plot schemes
#
# there is one for a heat map and 
# a second for a side bar plot
# to summarize a single dimension
# (such as N or stunting prevalence)
#
# there is a little bit of 
# a trick here  to ensure that
# they have the two plots render
# have the same exact dimensions
# so that the line up properly in
# the grid.arrange() function.
# to do this, you need to create a 
# "ghost" legend in the side bar
# using a fake fill.  It uses the 
# aes.overide arguments to make 
# everything white so that you can't
# see it.
#-----------------------------------

#define a color for fonts
textcol <- "grey20"

# heat map plot scheme
hm <- ggplot(dd,aes(x=as.numeric(agecat),y=studycountry)) +
  # facet over measurement frequency
  facet_grid(region~.,scales='free_y',space='free_y') +
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  #remove extra space
  scale_y_discrete(expand=c(0,0))+
  scale_x_continuous(expand=c(0,0),
                     breaks=0:24,labels=0:24)+
  #one unit on x-axis is equal to one unit on y-axis.
  #equal aspect ratio x and y axis
  # coord_equal()+
  #set base size for all font elements
  theme_grey(base_size=10)+
  #theme options
  theme(
    # legend options
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(1,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    #set x axis text size and colour
    axis.text.x=element_text(size=8,colour=textcol,angle=0,vjust=0.5),
    #set y axis text colour and adjust vertical justification
    axis.text.y=element_text(size=8,vjust = 0.2,colour=textcol),
    #change axis ticks thickness
    axis.ticks=element_line(size=0.4),
    # axis.ticks.x=element_blank(),
    #change title font, size, colour and justification
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    #format facet labels
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    #remove plot background
    plot.background=element_blank(),
    #remove plot border
    panel.border=element_blank()
    
    #remove plot margins
    # plot.margin=margin(grid::unit(1,"cm"))
  )


# side bar plot scheme
sidebar <- ggplot(data = dp, aes(x = studycountry)) + 
  geom_bar(stat = "identity") +
  coord_flip() + 
  facet_grid(region~.,scales='free_y',space='free_y') +
  #remove extra space
  scale_x_discrete(expand=c(0,0)) +
  scale_fill_manual(values=rep('gray70',7),na.value="grey90",
                    guide=guide_legend(title="",title.hjust = 0.5,
                                       label.position="bottom",label.hjust=0.5,nrow=1,
                                       override.aes = list(color = "white", fill="white"))) +
  theme_grey(base_size=10) +
  theme(
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=NA,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(0.2,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    # remove study labels
    axis.title.y = element_blank(), 
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    #adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    axis.title.x = element_text(size=10),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
    
  )



#-----------------------------------
# STUNTING PREVALENCE HEAT MAP
#-----------------------------------
# heat map
viridis_cols = c(viridis(
  n = length(levels(dd$hazcat)) - 1,
  alpha = 1,
  begin = 0,
  end = 0.8,
  direction = -1,
  option = "C"
  ),
  "grey90")

stphm <- hm +
  #aes(fill=hazcat) +
  # labs(x="Age in months",y="",title="Mean height-for-age Z-score by month of age") +
  labs(x="Age in months",y="",title="b") +
  aes(fill = hazcat) +
  scale_fill_manual(na.value="grey90",
                    guide=guide_legend(title="Mean LAZ",title.vjust = 1,
                                       label.position="bottom",label.hjust=0.1,nrow=1),
                    values = viridis_cols) 

#-----------------------------------
# number of obs side bar plot
#-----------------------------------
nbar <- sidebar +
  aes(y=overall_nmeas/1000,fill=region) +
  labs(x = "",y="N measurements (1000s)",title="c") +
  scale_y_continuous(expand=c(0,0),limits=c(0,80),
                     breaks=seq(0,80,by=20),labels=seq(0,80,by=20)) +
  geom_hline(yintercept = seq(0,80,by=20),color='white',size=0.3)

#-----------------------------------
# stunting prevalence side bar plot
#-----------------------------------
stpbar <- sidebar +
  aes(y=overall_stuntprev*100,fill=region) +
  # labs(x = "",y="Overall Prevalence (%)",title="Stunting") +
  labs(x = "",y="Stunting Prevalence (%)",title="d") +
  scale_y_continuous(expand=c(0,0),limits=c(0,70),
                     breaks=seq(0,70,by=10),labels=seq(0,70,by=10)) +
  geom_hline(yintercept = seq(0,70,by=10),color='white',size=0.3)

#-----------------------------------
# n by age top plot 
#-----------------------------------
nagebar <- ggplot(dd, aes(y = N/1000, x = as.numeric(agecat))) +
  geom_bar(stat = "identity", fill='gray70') +  
  scale_x_continuous(breaks = seq(1,24,1), labels = seq(1,24,1)) +
  theme(
    # make background white
    panel.background = element_blank(),
    # remove major grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    plot.title=element_text(colour=textcol,hjust=0.04,size=12,face="bold"),
    # remove x axis ticks
    axis.title.x=element_blank(),
    axis.text.x=element_blank(),
    axis.ticks.x=element_blank(),
    panel.border = element_blank(),
    axis.title.y = element_text(size=10)
  ) +
  ylab("N measurements (1000s)") + xlab("") +
  geom_hline(yintercept = seq(0,60,by=10),color='white',size=0.3) +
  ggtitle("a")

# add margin around plots
stphm = stphm + theme(plot.margin = unit(c(0,0.25,0.25,0.25), "cm"))
stpbar = stpbar + theme(plot.margin = unit(c(0,0.3,0.55,0.2), "cm"))
nbar = nbar + theme(plot.margin = unit(c(0,0.25,0.55,0.2), "cm"))
nagebar = nagebar + theme(plot.margin = unit(c(0.25,0.15,0,4.45), "cm"))
empty <- grid::textGrob("") 

# arrange components into single plot
stpgrid <- grid.arrange(nagebar, empty, empty,
                        stphm, nbar, stpbar,nrow = 2, ncol = 3,
                        heights = c(25,100),
                        widths=c(100,20,20))

# define standardized plot names
stpgrid_name = create_name(
  outcome = "stunting and laz" ,
  cutoff = 2,
  measure = "heatmap",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(filename=paste0(fig_dir, "stunting/fig-",stpgrid_name,".pdf"),
       plot = stpgrid,device='pdf',width=12,height=9)
saveRDS(list(dd = dd,
             dp = dp), 
        file=paste0(figdata_dir_stunting, "figdata-",stpgrid_name,".RDS"))

