proteomics <- function(...) {
    .Deprecated("MsDataHub::MsDataHub()")
    list.files(system.file("proteomics", package = "msdata"), ...)
}

ident <- function(...) {
    .Deprecated("MsDataHub::MsDataHub()")
    list.files(system.file("ident", package = "msdata"), ...)
}
quant <- function(...) {
    .Deprecated("MsDataHub::MsDataHub()")
    list.files(system.file("quant", package = "msdata"), ...)
}
