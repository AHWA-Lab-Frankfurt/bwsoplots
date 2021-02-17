#' Map extent
#'
#' A boundary box for the project area.
#'
#' @format An sf bbox object with four named numerics.
"mapextent"


#' ggplot map theme
#'
#' A set of ggplot theme parameters to set a map background theme.
#'@format ggplot theme parameters.
"maptheme"

#' Rivers
#'
#' SF object containing all major river lines.
#'
#' @format A data frame with 6 rows and 10 variables:
#' \describe{
#'   \item{scalerank}{scale rank}
#'   \item{featurecla}{feature class}
#'   \item{name}{name}
#'   \item{min_zoom}{minimum zoom}
#'   \item{min_label}{min label}
#'   \item{label}{label}
#'   \item{wikidataid}{wikidataid}
#'   \item{wdid_score}{wdid score}
#'   \item{ne_id}{ne_id}
#'   \item{geometry}{geometry}
#' }
#' @source \url{http://www.naturalearthdata.com}
"rivers"

#' Relief elevation data
#'
#' A dataset the elevation of point in XYZ coordinates.
#'
#' @format A data frame with 477144 rows and 3 variables:
#' \describe{
#'   \item{value}{elevation in metres ASL}
#'   \item{x}{x coordinate}
#'   \item{y}{y coordinate}
#' }
#' @source \url{http://www.naturalearthdata.com}
"relief"

#' Relief background map
#'
#' A set of ggplot parameter for a DEM background map
#'
#' @format ggplot parameters
"maplayout.relief"
