% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elsar_load_data.R
\name{elsar_load_data}
\alias{elsar_load_data}
\title{Load different types of data}
\usage{
elsar_load_data(
  file_name,
  file_path = NULL,
  file_lyr = NULL,
  file_type,
  wkt_filter = FALSE,
  bb_extend = NULL,
  db_info = NULL,
  pg_connection = NULL,
  iso3_column = "iso3cd",
  iso3
)
}
\arguments{
\item{file_name}{character of the file name. Needs to contain the file type ending (e.g. \code{.tif}) if loading from a local source.}

\item{file_path}{path where local file is stored. Needs to be \code{NULL} when using postgres.}

\item{file_lyr}{optional. Layer information of data.}

\item{file_type}{character of file type. Current options are: "postgres", "shp", "gpkg", "geojson", "tif", "tiff", "grd", "gri", "nc", "hdf"}

\item{wkt_filter}{character; WKT representation of a spatial filter that is used to bound loaded data}

\item{bb_extend}{\code{SpatRaster} used as bounding box when wkt_filter = TRUE, e.g. planning units}

\item{db_info}{list in the style of a dictionary. Only needed when file_type = "postgres". Needs to have the following structure and information: postgres_dict <- c(host = "\if{html}{\out{<yourhost>}}", dbname ="\if{html}{\out{<yourdbname>}}", port = \if{html}{\out{<portNumber>}}, user = "\if{html}{\out{<yourusername>}}", password = "\if{html}{\out{<yourpassword>}}")}

\item{pg_connection}{Either a list in the style of a dictionary or a connection string. Only needed when \code{file_type = "postgres"}.}

\item{iso3_column}{Only relevant when \code{file_type} "postgres" is selected. A string of the name of where iso3 information can be found in a dataset.}

\item{iso3}{The iso3 country code (character) of the country of interest.}
}
\value{
The loaded data either as a \code{SpatRaster} or \code{sf} object
}
\description{
Load different types of data
}
\examples{
\dontrun{
load_tif <- elsar_load_data(file_name = "pu_nepal_450m.tif", file_path = localPath
                          file_type = "tif")

load_geojson <- elsar_load_data(file_name = "nepal.geojson", file_path = localPath,
                          file_type = "geojson")

postgres_dict <- c(host = "yourhost",
                   dbname ="yourdbname",
                   port = portNumber,
                   user = "yourusername",
                   password = "yourpassword")

load_postgres <- elsar_load_data(file_name = "bnda_simplified",
                           file_type = "postgres",
                           db_info = postgres_dict,
                           iso3_column = "iso3cd",
                           iso3 = "NPL")

pg_conn <- make_postgres_connection(
  dbname = "yourdatabase",
  user = "yourusername",
  password = "yourpassword")

load_postgres <- elsar_load_data(
  file_name = "bnda_simplified",
  file_type = "postgres",
  pg_connection = pg_conn,
  iso3_column = "iso3cd",
  iso3 = "NPL")
}
}
