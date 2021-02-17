## Create shaded relief map background

## load data from naturalearth
shrelief <- rnaturalearth::ne_download(scale = 10, type = 'SR_HR', category = 'raster', returnclass = "sf")

## crop to study area
data(mapextent)
relief_crop <- raster::crop(shrelief, mapextent)

## convert to DEM dataframe
relief_spdf <- as(relief_crop, "SpatialPixelsDataFrame")
relief <- as.data.frame(relief_spdf)
colnames(relief) <- c("value", "x", "y")

rm(shrelief, relief_crop, relief_spdf)

usethis::use_data(relief, overwrite = TRUE)
