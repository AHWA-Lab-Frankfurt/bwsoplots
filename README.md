# Commonly used plots for the archaeo-linguistics project
Common plot functions for the Borrowed Words and Shared Objects project. For internal use only.

The packages aims to create a certain visual consistency across the publications of the project.

So far, there are only scatterplots and ridgeplots on this, but it will be extended in the coming weeks and months.

## How to install:
`devtools::install_github("AHWA-Lab-Frankfurt/bwsoplots")`

## Map layouts and backgrounds:

The package contains a number of vectors that can be called within a ggplot or ggraph environment. These are:
* maplayout.relief (a greyscale shaded relief background with major rivers in light blue)

### Usage example:
`graph %>% ggraph(x = lon, y = lat) + geom_edge_link() + geom_node_point() + maplayout.relief`
