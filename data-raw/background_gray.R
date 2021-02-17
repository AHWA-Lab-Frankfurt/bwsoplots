## code to prepare `background_gray` dataset goes here
library(dplyr)
background_gray <- rnaturalearth::ne_download(scale = 10, type = 'GRAY_HR_SR_W', category = 'raster', returnclass = "sf")

data(mapextent)

#crop
gray_crop <- raster::crop(background_gray, mapextent)

#convert to DEM dataframe
gray_spdf <- as(gray_crop, "SpatialPixelsDataFrame")
background_gray <- as.data.frame(gray_spdf)
colnames(background_gray) <- c("value", "x", "y")

rm(gray_spdf, gray_crop)

usethis::use_data(background_gray, overwrite = TRUE)
