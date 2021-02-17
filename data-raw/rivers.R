## Create a dataset of rivers and crop it to the study area
library(dplyr)
rivers50 <- rnaturalearth::ne_download(scale = 50, type = 'rivers_lake_centerlines', category = 'physical', returnclass = "sf")

data(mapextent)

rivers <- sf::st_crop(rivers50, mapextent)

rivers <- rivers %>% select(1,2,3,5,7,9,10,31,32,33)

rm(rivers50)

usethis::use_data(rivers, overwrite = TRUE)

