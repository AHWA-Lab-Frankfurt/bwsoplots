## Create a map theme for ggplot

maptheme <- ggplot2::theme(panel.grid = ggplot2::element_blank()) +
  ggplot2::theme(axis.text = ggplot2::element_blank()) +
  ggplot2::theme(axis.ticks = ggplot2::element_blank()) +
  ggplot2::theme(axis.title = ggplot2::element_blank()) +
  ggplot2::theme(legend.position = "bottom") +
  ggplot2::theme(panel.grid = ggplot2::element_blank()) +
  ggplot2::theme(panel.background = ggplot2::element_rect(fill = "#596673")) +
  ggplot2::theme(plot.margin = ggplot2::unit(c(0, 0, 0.5, 0), 'cm'))

usethis::use_data(maptheme, overwrite = TRUE)

