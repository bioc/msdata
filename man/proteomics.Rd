\name{proteomics}
\alias{proteomics}


\title{
  Proteomics data in \code{msdata}
}


\description{

  This function returns proteomics mass spectrometry files. These files
  are all stored in the \code{proteomics} directory in the \code{msdata}
  package. Each file/data is described in more details below.
  
}


\usage{
proteomics(...)
}


\arguments{
  
  \item{\dots}{Additional arguments passed to \code{\link{list.files}}.}
  
}


\details{

  \itemize{
  
    \item{\code{TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01.mzML.gz}:}{
      A LC-MSMS data file containing iTRAQ 4-plex data. The data is
      described in more details in Gatto L. and Christoforou
      A. \emph{Using R and Bioconductor for proteomics data analysis}
      (PMID
      \href{http://www.ncbi.nlm.nih.gov/pubmed/23692960}{23692960}). This
      file only contains a subset of the fill data (spectra 1002 to
      1510) and was generated from the full data using \code{msconvert}
      (ProteoWizard release: 3.0.9283 (2016-1-11)) using following
      command

      \code{msconvert
	TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210.mzML
	--filter "index [1002,1510]" -o subset
      }

      The original file is available in the ProteomeXchange
      \code{PXD000001} project.
    }

    \item{\code{MS3TMT10_01022016_32918-33482.mzML.gz}:}{A subset of 565
      spectra from a currenly unpublished TMT 10-plex experiment run on
      an Thermo Orbitrap Lumos with synchronous precursor selection
      (SPS) MS3. Only the MS2 spectra were centroided during convertion
      using \code{msconvert} (ProteoWizard release: 3.0.9283
      (2016-1-11)) using vendor libraries.
    }

  }
}

\value{
  A \code{character} with file names.
}


\author{
  Laurent Gatto <lg390@cam.ac.uk>
}

\seealso{
  For more access to mass spectrometry-based proteomics data, see the
  \code{rpx} and \code{ProteomicsAnnotationHubData} packages.  
}

\examples{
(f <- proteomics(full.names = TRUE))

library(mzR)
openMSfile(f[1])
}