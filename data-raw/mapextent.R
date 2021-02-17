## create extent (bbox) of project area for cropping map backgrounds

mapextent <- sf::st_bbox(c(xmin = -10.4, xmax = 3.7, ymax = 19, ymin = 9.6), crs = 4326)

usethis::use_data(mapextent, overwrite = TRUE)
