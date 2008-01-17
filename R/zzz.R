##
## Load preprocessed data
##
load(file.path(.find.package("msdata"), "data", "xs.rda"))

##
## Repair path on other platforms
##
attr(xs, "cdfpaths") <- file.path(.find.package("msdata"),
                                 gsub("/", .Platform$file.sep,
                                      attr(xs, "cdfpaths")))

