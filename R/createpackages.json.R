#x <- system("gh repo list hypertidy --limit 10000", intern = TRUE)
#y <- unlist(lapply(strsplit(gsub("^hypertidy/", "", x), "\t"), "[", 1))
d <- tibble::tibble(package = c("activate", "affinity", "anglr", "area", "cartilage",
                                "cdt", "cells", "ceramic", "clipper", "CMIP5files", "contourPolys",
                                "crsmeta", "decido", "discrete", "ffraster",  "gdalio",
                                 "gdalwebsrv", "geodist", "gladr", "granulated", "gridcol",
                                "grout", "guerrilla",
                                "kekule",  "lazyraster", "lazyvector", "manifoldr",
                                 "ncapi", "ncdump", "ncmeta", "pfft",
                                "PROJ", "quadmesh",  "realm", "rearcut",
                                "reproj", "scdb", "scgraph", "scspatstat", "sfdct", "silicate",
                                "sphier", "svgplotr", "tabularaster", "textures", "tidyff",
                                "unjoin", "vapour", "vtkr")
)
d$url <- sprintf("https://github.com/hypertidy/%s", d$package)
d$subdir <- NA
jsonlite::write_json(d, 'packages.json', pretty = TRUE)
