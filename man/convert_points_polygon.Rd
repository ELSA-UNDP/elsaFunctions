% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{convert_points_polygon}
\alias{convert_points_polygon}
\title{Create Buffered Polygons from Point Geometries}
\usage{
convert_points_polygon(
  wdpa_layer,
  area_attr = "REP_AREA",
  area_crs = "ESRI:54009",
  nQuadSegs = 50,
  append_sf = TRUE
)
}
\arguments{
\item{wdpa_layer}{An \code{sf} object containing point geometries and the area attribute.}

\item{area_attr}{A character string specifying the name of the area attribute. Default is 'REP_AREA'.}

\item{area_crs}{A character string specifying the coordinate reference system for area calculations. Default is 'ESRI:54009' (World Mollweide projection).}

\item{nQuadSegs}{An integer specifying the number of segments to use for buffering. Default is 50.}

\item{append_sf}{logical. If \code{TRUE}, returns the initial wdpa_layer with polygons instead of points. If \code{FALSE}, will only returned the points with buffers.}
}
\value{
An \code{sf} object with buffered polygon geometries.
}
\description{
This function creates polygon buffers around point geometries within a given spatial layer.
It uses the specified area attribute to determine the size of each buffer and transforms
geometries into a specified coordinate reference system for accurate area calculations.
}
\examples{
\dontrun{
 pa <- wdpar::wdpa_fetch("NPL",
  wait = TRUE,
  download_dir = here::here()
)
buffered_polygons <- convert_points_polygon(wdpa_layer = pa,
      area_crs = sf::st_crs(pa))
      }
}
