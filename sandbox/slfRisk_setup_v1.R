library(tidyverse)
library(devtools)
library(pkgdown)
library(roxygen2)
# library(fs)
# library(usethis)

# TODO

#options(ENTREZ_KEY = ncbi_key)

#pkgdown::build_articles()
pkgdown::build_site()

load_all()
document()
check()
build()
install()

use_package("dplyr", type = "Imports")
use_package("stringr", type = "Imports") #switch to tidyverse?
use_package("ggplot2", type = "Imports")
use_package("here", type = "Imports") #added by NAH
use_package("tools", type = "Imports") #added by NAH
use_package("usethis", type = "Imports") #added by NAH



#----
# Vignettes

usethis::use_vignette("vignette-010-tidy-data")
usethis::use_vignette("vignette-020-quadrant-plots")
usethis::use_vignette("vignette-030-risk-maps")

#----
## ONLY RUN CAREFULLY

# Functions

use_r("function name")                      # Make functions
use_r("function name")                      # Test functions
use_testthat()
use_test("function name")

# Build

use_package_doc()
use_mit_license("iEcoLab")                  # License
use_readme_rmd()                            # edit GitHub README here?
rmarkdown::render("README.Rmd")             # or use "Knit HTML" in RStudio

if (interactive()) {                        # maybe good or bad...
  suppressMessages(require(devtools))
}

use_build_ignore("[.]ini$", escape = FALSE)
use_build_ignore("sandbox", escape = FALSE)
use_build_ignore("README.html", escape = FALSE)
use_git_ignore("desktop.ini")
