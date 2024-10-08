% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{rescale_raster}
\alias{rescale_raster}
\title{Rescale rasters to between 0 and 1}
\usage{
rescale_raster(
  raster_in,
  raster_in_min = terra::global(raster_in, min, na.rm = TRUE)$min,
  raster_in_max = terra::global(raster_in, max, na.rm = TRUE)$max,
  new_min = 0,
  new_max = 1
)
}
\arguments{
\item{raster_in}{Input raster}

\item{raster_in_min}{Min value of raster}

\item{raster_in_max}{Max value of raster}

\item{new_min}{0}

\item{new_max}{1}
}
\value{
\code{raster} file that is normalised from 0 to 1
}
\description{
Rescale rasters to between 0 and 1
}
\examples{
\dontrun{
raster_rescaled <- rescale_raster(dat_aligned)
}
}
