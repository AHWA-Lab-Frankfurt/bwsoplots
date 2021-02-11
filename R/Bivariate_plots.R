# This file contains common plots for bivariate analyses and data exploration.

#' Create a ridge plot
#'
#' This function creates a ridge plot using the packages ggplot2 and ggridges.
#' The ridge plot allows you to plot the distribution of a numeric variable
#' separated by the levels of a factor.
#'
#' @param data dataset
#' @param x.var a numeric variable
#' @param y.var a factor variable
#' @param title plot title
#' @param subtitle subtitle
#' @param xlabel x axis label
#' @param ylabel y axis label
#' @return A ridge plot of the two variables
#' @export
ridgeplot <- function(data, x.var, y.var, title = NULL, subtitle = NULL, xlabel = NULL, ylabel = NULL, ...) {
  x.var <- enquo(x.var)
  y.var <- enquo(y.var)
  p <- ggplot2::ggplot(data,
              aes(x = !! x.var,
                  y = !! y.var,
                  fill = !! y.var))
  p + ggridges::geom_density_ridges() +
    ggridges::theme_ridges() +
    labs(title = title,
         subtitle = subtitle,
         x = xlabel,
         y = ylabel)+
    theme(legend.position = "none")
}

#' Create a scatter plot with a regression line
#'
#' This function creates a scatter plot using the package ggplot2.
#' The scatter plot allows you to plot the distribution of two numeric variables
#' and adds a regression line to indicate their correlation.
#'
#' @param data dataset
#' @param x.var a numeric variable
#' @param y.var a numeric variable
#' @param title plot title
#' @param subtitle subtitle
#' @param xlabel x axis label
#' @param ylabel y axis label
#' @return A scatter plot of the two variables
#' @export
scatter <- function(data, x.var, y.var, title = NULL, subtitle = NULL, xlabel = NULL, ylabel = NULL, ...){
  x.var <- enquo(x.var)
  y.var <- enquo(y.var)
  p <- ggplot2::ggplot(data, aes(x = !! x.var, y = !! y.var))
  p + geom_point() +
    geom_smooth(method = lm, se = FALSE) +
    theme_minimal()+
    labs(title = title,
         subtitle = subtitle,
         x = xlabel,
         y = ylabel)
}
