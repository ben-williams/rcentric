# packages to load
library(funcr)
library(tidyverse)
library(PBSmapping)

# map data 
data('nepacLLhigh') 

nepacLLhigh %>% 
  dplyr::select(group = PID, POS = POS,long = X, lat = Y) -> ak 