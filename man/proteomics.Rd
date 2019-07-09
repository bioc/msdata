\name{proteomics}
\alias{proteomics}
\alias{ident}
\alias{quant}
\alias{fdms3tmt11}

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

      The complete file is
      \code{TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210.mzML.gz},
      also available here, and can also be downloaded from the
      ProteomeXchange \code{PXD000001} project (see the \code{rpx}
      package).
      
      An MS2 identification file,
      \code{ident/TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210.mzid},
      generated searching the raw data against the \emph{Erwinia
	carotovora} database (see reference above) is also available
      through the \code{ident} function.

    }


    \item{\code{MS3TMT10_01022016_32917-33481.mzML.gz}:}{A subset of 565
      spectra from a currenly unpublished TMT 10-plex experiment run on
      an Thermo Orbitrap Lumos with synchronous precursor selection
      (SPS) MS3. Only the MS2 spectra were centroided during convertion
      using \code{msconvert} (ProteoWizard release: 3.0.9283
      (2016-1-11)) using vendor libraries.
    }

    
    \item{\code{MS3TMT11.mzML}:}{A subset of 994 spectra from a currenly
      unpublished MS3 SPS TMT 11-plex experiment converted to mzML using
      \code{msconvert}. The file contains 30, 482 and 482 MS1, MS2 and
      MS3 spectra, respectively. The MS1 spectra are in profile mode;
      other MS levels are centroided. See \emph{Sensitive and Accurate
	Quantitation of Phosphopeptides Using TMT Isobaric Labeling
	Technique} for details about the acquisition method.

      An feature data containing identification data is available with
      \code{data(fdms3tmt11)}, which can be used to directly update the
      feature data, as shown in the example below.
    
    }


    \item{MRM-standmix-5.mzML.gz}:{Sample from mouse brain acquired by
      HILIC ESI-QqQ/MS in Dynamic multiple reaction monitoring mode
      (MRM). HPLC system was a 1290 Infinity (Agilent Technologies)
      coupled to ion-Funnel Triple quadrupole 6490 mass spectrometer
      (Agilent Technologies). This file was contributed by Xavi
      Domingo-Almenara from theThe Scripps Research Institute, San Diego,
      CA. }
    
  }
}

\value{
  A \code{character} with file names.
}


\author{
  Laurent Gatto <laurent.gatto@uclouvain.be>
}

\seealso{
  For more access to mass spectrometry-based proteomics data, see the
  \code{rpx} and \code{ProteomicsAnnotationHubData} packages.  
}

\examples{
## raw data files
(f <- proteomics(full.names = TRUE))

library("mzR")
openMSfile(f[2])

library("MSnbase")
## The MS3 TMT11 raw data
(fms3 <- proteomics(full.names = TRUE, pattern = "MS3TMT11.mzML"))
ms3 <- readMSData(fms3, mode = "onDisk")
ms3

## Additional feature metadata
data(fdms3tmt11)
names(fdms3tmt11)

fData(ms3) <- fdms3tmt11
validObject(ms3)

## identification data file
ident(full.names = TRUE)

## quantiative data files
quant(full.names = TRUE)
}