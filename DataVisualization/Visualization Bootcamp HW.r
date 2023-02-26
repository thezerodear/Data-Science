# -*- coding: utf-8 -*-

# -- Sheet --

# # Data Visualization Homework


library(tidyverse)
library(dplyr)

str(diamonds)

# Graph 1 : Relationship Between Price and Carat


df <- diamonds 
    


sdf <- sample_n(df,500)
ggplot(sdf,aes(carat,price,col=cut))+
        geom_point()+
        geom_smooth(method = lm,se=F)+
        theme_minimal()+
        labs(title='Relationship between Price and Carat')+
        facet_wrap(~ cut,ncol=5)+
        theme(plot.title = element_text(hjust = 0.5))
        

# Graph 2 : Price of clarity segmented by cut


sdf %>%
  group_by(clarity, cut) %>% 
  summarize(m = mean(price)) %>% 
  ggplot(aes(x = clarity, y = m, group = cut, fill = cut)) +
  geom_bar(stat = "identity")+
  theme_minimal()+
  labs(title='Price of Clarity segmented by cut ')+
  theme(plot.title = element_text(hjust = 0.5))
 

# Graph 3 : Density of clarity


ggplot(sdf,aes(price,fill=clarity))+
    geom_density()+
    theme_minimal()+
    facet_wrap(~ clarity)+
    labs(
        title='Density of clarity'
    )+
    theme(plot.title = element_text(hjust = 0.5))
    
    

# Graph 4 : Extreme values in Color


ggplot(sdf,aes(price,fill=color))+
    geom_boxplot()+
    theme_minimal()+
    facet_wrap(~ color)+
    labs(
        title="Extreme Values in Color"
    )+
    theme(plot.title = element_text(hjust = 0.5))
    

# Graph 5 : Relationship Between Price and Table



ggplot(sdf,aes(table,price,col=table))+
        geom_point()+
        geom_smooth(method = lm,se=F)+
        theme_minimal()+
        labs(title='Relationship between Price and table')+
        facet_wrap(~ color,ncol=3)+
        theme(plot.title = element_text(hjust = 0.5))

