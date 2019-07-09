proteomics <- function(...)
    list.files(system.file("proteomics", package = "msdata"), ...)

ident <- function(...)
    list.files(system.file("ident", package = "msdata"), ...)

quant <- function(...)
    list.files(system.file("quant", package = "msdata"), ...)
