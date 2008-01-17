\name{msdata}
\alias{msdata}
\alias{xs}
\docType{data}
\title{Sample LC/MS and MS$^n$ data}
\description{
  \code{x} object containing a subset of LC/MS raw data from an Thermo Finnigan LCQ Deca XP 
  The data is a subset from 500-850 m/z and 1190-1310 seconds, incl. MS2 and MS3,
  intensity threshhold 100.000. It was collected in positive ionization mode.
}

\usage{data(xs)}
\format{
  The format is: \preformatted{
  xs
}}
\details{
  The corresponding raw mzdata files are located in the \code{mzdata}
  subdirectory of this package.
}

\seealso{
  \code{\link[xcms]{xcmsSet}},
  \code{\link[xcms]{xcmsRaw}}
}
\examples{
## The directory with the mzData LC/MS files
mzdatapath <- file.path(.find.package("msdata"), "mzdata")
mzdatapath
list.files(mzdatapath, recursive = TRUE)

if (require(xcms)) {

## xcmsRaw Summary
show(xs)

## Access raw data file
x <- xcmsRaw(cdfpaths(xs)[1])
x

}
}
\keyword{datasets}
