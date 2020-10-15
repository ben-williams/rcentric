# ak map
# ben.williams@noaa.gov
# 2020-10

# load ----
source("code/helper.r")

ggplot() + 
  geom_polygon(data = ak, aes(long, lat, group = group), fill=8, color='black') +
  theme(panel.background = element_rect(fill = 'white')) +
  xlab(expression(paste(Longitude^o,~'W'))) +
  ylab(expression(paste(Latitude^o,~'W')))+
  coord_map(xlim = c(-165, -145), ylim = c(54, 61)) +
  scale_x_continuous(breaks = seq(-165, -145, 2.5)) +
  funcr::theme_report()

ggsave("figs/akmap.png", dpi = 200, height = 4, width = 5, units = "in")
