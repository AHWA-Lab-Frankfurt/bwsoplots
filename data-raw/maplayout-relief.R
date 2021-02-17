## code to prepare `maplayout.relief` dataset goes here
library(ggplot2)
data(relief, maptheme)
maplayout.relief <- list(geom_tile(data=relief, aes(x=x, y=y, fill=value), alpha=0.8),
                         scale_fill_continuous(low = "white", high = "grey"),
                         coord_equal(),
                         geom_sf(data = rivers, color = "aliceblue"),
                         maptheme,
                         guides(fill = FALSE)
)

usethis::use_data(maplayout.relief, overwrite = TRUE)
