.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
      paste("\n IMPORTANT: msdata will be deprecated and replaced by the new\n",
            "MsDataHub package -- see https://bioconductor.org/packages/MsDataHub.\n",
            "Please open an issue at https://github.com/rformassspectrometry/MsDataHub/issues\n",
            "to inform us of any data from msdata that would need to be moved to MsDataHub.\n"))
}
