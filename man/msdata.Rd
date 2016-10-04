\name{msdata}
\alias{msdata}
\docType{data}
\title{Sample FTICR, LC/MS and MS$^n$ data}
\description{
  \code{x} object containing a subset of LC/MS raw data from a Thermo Finnigan LCQ Deca XP 
  The data is a subset from 500-850 m/z and 1190-1310 seconds, incl. MS2 and MS3,
  intensity threshhold 100.000. It was collected in positive ionization mode.

  \code{xs} object containing a subset of FTICR data from a Bruker APex
  III FTICR. The data is a subset from 400-450 m/z, collected in positive ionization mode.

}

\details{
  The corresponding raw mzdata files are located in the \code{fticr} and \code{iontrap}
  subdirectory of this package.
}

\examples{
## The directory with the mzData LC/MS files
mzdatapath <- file.path(find.package("msdata"), "iontrap")
mzdatapath
files <- list.files(mzdatapath, recursive = TRUE, full.names = TRUE)
files

if (require(xcms)) {
## Access raw data file
x <- xcmsRaw(files[1])
x
}
}
\keyword{datasets}
