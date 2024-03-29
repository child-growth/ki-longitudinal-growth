
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
require(cowplot)


rain <- read.csv(here("/data/monthly_rainfall.csv"))

d <- readRDS(seasonality_data_path)
d <- d %>% filter(measurefreq=="monthly")
head(rain)
head(d)

rain$country <- toupper(rain$country)
rain$country[rain$country=="TANZANIA "]<-"TANZANIA"
rain <- mark_region(rain)
rain$region <- factor(rain$region, levels = c("South Asia","Africa","Latin America"))
rain$country <- tolower(rain$country)
d$country <- tolower(d$country)
rain <- rain[,-1]
colnames(rain)[1] <- "studyid"
rain$studyid <- as.character(rain$studyid)
d$country[d$country=="tanzania, united republic of"] <- "tanzania"



#remove grant identifiers from studyid
# d$studyid <- gsub("^k.*?-" , "", d$studyid)
rain$studyid <- gsub("^k.*?-" , "", rain$studyid)
rain$studyid[rain$studyid == "PROVIDE "] <-  "PROVIDE"

#Transform rain dataset
rain <- rain %>% subset(., select = c("studyid", "country", "region", "cohort_index", "Jan_pre", "Feb_pre", "Mar_pre", "Apr_pre", "May_pre",
                                      "Jun_pre", "Jul_pre", "Aug_pre", "Sep_pre", "Oct_pre", "Nov_pre", "Dec_pre"))

rain$country <- str_to_title(rain$country)
d$country <- str_to_title(d$country)

# gather meanhaz by month data into long format
rain2 <- rain %>%
  gather(month,rain, -studyid, -country, -cohort_index, -region) 
rain2$month = gsub("_pre","",rain2$month)
rain2$month = factor(rain2$month, levels=c("Jan", "Feb", "Mar", "Apr", "May","Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
head(rain2)

rain2$month_day = as.numeric(rain2$month) * 30.4167
rain2$studyid[rain2$studyid == "PROVIDE "] <-  "PROVIDE"





#arrange cohorts by seasonality index and set factor levels
rain2 <- rain2 %>% arrange(region, country, -cohort_index) %>% 
  mutate(cohort = paste0(studyid, ", ", country),
         cohort=factor(cohort, levels=unique(cohort))) 
d <- d %>% mutate(cohort = paste0(studyid, ", ", country),
                  cohort=factor(cohort, levels=unique(rain2$cohort)))

rain2 <- droplevels(rain2)
cohorts=levels(rain2$cohort)
cohorts
head(d)

df <- d
rain <- rain2
cohort_name <- cohorts[[1]]



#Rain_plot function
rain_plot <- function(df, rain, cohort_name){
  rain_sub <- filter(rain, cohort == cohort_name)
  dsub <- filter(df, cohort == cohort_name)
  
  #add
  cohort_name <- paste0(cohort_name," (", round(rain_sub$cohort_index[1],2),")")
  
  rainmax = max(rain_sub$rain)
  
  # estimate spline fit to mean z-scores by day of the year
  fiti <- mgcv::gam(haz ~ s(jday, bs = "cr"), data = dsub)
  newd <- data.frame(jday = 0:364)
  # estimate approximate simultaneous confidence intervals
  fitci <- gamCI(m = fiti, newdata = newd, nreps = 1000)
  dfit <- data.frame(jday = 0:364, region=dsub$region[1], fit = fitci$fit, fit_se = fitci$se.fit, fit_lb = fitci$lwrS, fit_ub = fitci$uprS)
  
  shift<-min(dfit$fit_lb)
  Zpeak<-ifelse(min(dfit$fit_lb)<0, abs(min(dfit$fit_lb)), max(dfit$fit_ub-shift))
  conv_shift<-ifelse(min(dfit$fit_lb)<0, max(dfit$fit_ub), 0)
  #shift<-max(dfit$fit_ub)
  conversion_factor <- rainmax/(Zpeak+conv_shift)
  #conv_shift<-ifelse(min(dfit$fit_lb)<0, min(dfit$fit_lb), 0)
  #conversion_factor <- 577.9106
  
  summary(rain_sub$rain)
  summary((dfit$fit-shift))
  summary((dfit$fit-shift)*conversion_factor)
  
  if(i >= 10){
  p <- ggplot(rain_sub, aes(x=month, y=rain)) + geom_bar(stat='identity', width=0.5, alpha=0.5) +
    geom_line(data = dfit, aes(x=(jday/365)*12+0.5, y=(fit-shift)*conversion_factor, color=region), size=2) +
    geom_ribbon(data = dfit, aes(x=(jday/365)*12+0.5,  
                                 y=(fit-shift)*conversion_factor, 
                                 ymin=(fit_lb-shift)*conversion_factor,  
                                 ymax=(fit_ub-shift)*conversion_factor, 
                                 color=NULL, fill=region), alpha=0.3) +
    scale_y_continuous(position = "right", expand = expand_scale(mult = c(0,0.1)), sec.axis = sec_axis(~(./(conversion_factor)+shift), name = "Mean WLZ")) +
    ylab(NULL) + xlab(NULL) +
    scale_fill_manual(values=tableau10[c(1,3,2,4,5,6)], drop=TRUE, limits = levels(df$region)) +
    scale_color_manual(values=tableau10[c(1,3,2,4,5,6)], drop=TRUE, limits = levels(df$region)) +
    scale_x_discrete(expand = c(0, 0), #breaks = 1:6*2, 
                     labels = c("Jan.","", "Mar.","", "May","", "Jul.","", "Sep.","", "Nov.",""))+
    ggtitle(cohort_name) + theme(legend.position = "none")
  }else{
    p <- ggplot(rain_sub, aes(x=month, y=rain)) + geom_bar(stat='identity', width=0.5, alpha=0.5) +
      geom_line(data = dfit, aes(x=(jday/365)*12+0.5, y=(fit-shift)*conversion_factor, color=region), size=2) +
      geom_ribbon(data = dfit, aes(x=(jday/365)*12+0.5,  
                                   y=(fit-shift)*conversion_factor, 
                                   ymin=(fit_lb-shift)*conversion_factor,  
                                   ymax=(fit_ub-shift)*conversion_factor, 
                                   color=NULL, fill=region), alpha=0.3) +
      scale_y_continuous(position = "right", expand = expand_scale(mult = c(0,0.1)), sec.axis = sec_axis(~(./(conversion_factor)+shift), name = "")) +
      ylab("Rainfall (mm)") + xlab(NULL) +
      scale_fill_manual(values=tableau10[c(1,3,2,4,5,6)], drop=TRUE, limits = levels(df$region)) +
      scale_color_manual(values=tableau10[c(1,3,2,4,5,6)], drop=TRUE, limits = levels(df$region)) +
      scale_x_discrete(expand = c(0, 0), #breaks = 1:6*2, 
                       labels = c("Jan.","", "Mar.","", "May","", "Jul.","", "Sep.","", "Nov.",""))+
      ggtitle(cohort_name) + theme(legend.position = "none")
  }
  
  
  return(p)
}


#Get N's for caption
Ns <- d %>% group_by(studyid, country) %>% summarize(nmeas=n(), nchild=length(unique(subjid)))
Ns
Ns %>% summarize(min(nmeas), min(nchild), max(nmeas), max(nchild))


plot_list=list()
for(i in 1:length(cohorts)){
  print(cohorts[i])
  plot_list[[i]] <- rain_plot(df=d, rain=rain2, cohort_name=cohorts[i])
}

#Save plot-objects
saveRDS(plot_list, file=paste0(BV_dir,"/figures/plot-objects/stunting_rain_seasonality_plot_objects.rds"))


