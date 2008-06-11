##
## Load preprocessed data
##
load(file.path(.find.package("msdata"), "data", "xs.rda"))

##
## Repair path on other platforms
##
attr(xs, "filepaths") <- file.path(.find.package("msdata"),
                                 gsub("/", .Platform$file.sep,
                                      attr(xs, "filepaths")))

