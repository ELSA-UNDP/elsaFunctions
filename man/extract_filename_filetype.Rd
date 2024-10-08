% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{extract_filename_filetype}
\alias{extract_filename_filetype}
\title{Extract the file name and file type of data in the local path}
\usage{
extract_filename_filetype(data_name, file_path)
}
\arguments{
\item{data_name}{The name of the data of interest (needs to be in the way provided here in the file name)}

\item{file_path}{The local path where the data is saved.}
}
\value{
A \code{list} in the form of a dictionary that contains "filename" and "filetype". Can be used as inputs for \code{\link[=elsar_load_data]{elsar_load_data()}}.
}
\description{
This is a helper function used in the wrapper function to load local data (can be extended later to work with postgres).
}
