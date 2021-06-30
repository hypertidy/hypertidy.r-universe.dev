d <- tibble::tibble(package = c("vapour", "gdalio", "affinity", "granulated", "cells", "geodist",
                                "gdalwebsrv", "sfdct", "ncmeta", "tabularaster", "quadmesh",
                                "ceramic", "anglr", "silicate", "PROJ", "lazyvector", "reproj",
                                "lazyraster", "textures", "grout",
                                "area", "decido", "kekule", "unjoin",
                                "guerrilla", "crsmeta"))
d$url <- sprintf("https://github.com/hypertidy/%s", d$package)
d$subdir <- NA
jsonlite::write_json(d, 'packages.json', pretty = TRUE)
