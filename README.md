
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/spAddins)](https://cran.r-project.org/package=spAddins) [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![GitHub version](https://img.shields.io/badge/GitHub-v0.1.4.3001-brightgreen.svg)](https://github.com/GegznaV/spAddins) [![Travis-CI Build Status](https://travis-ci.org/GegznaV/spAddins.png?branch=master)](https://travis-ci.org/GegznaV/spAddins)

R package `spAddins`
====================

`spAddins` is an R package that provides a set of RStudio addins which are designed to be used in combination with user-defined RStudio keyboard shortcuts. These addins either insert text at the cursor position (e.g. insert operators `%>%`, `<<-`, `%$%`, etc.) or replace symbols in selected pieces of text (e.g., convert backslashes to forward slashes which results in strings like `"c:\data\"` converted into `"c:/data/"`).

Install package
---------------

Install released version from CRAN:

``` r
install.packages("spAddins")
```

Install development version from GitHub:

``` r
if (!require(devtools)) install.packages("devtools")
library(devtools)
install_github("GegznaV/spAddins")
```

Recommended workflow and a few examples
---------------------------------------

``` r
vignette("v1_workflow", package = "spAddins")

browseVignettes("spAddins")
```

------------------------------------------------------------------------

<p align="right">
File updated on <b>2016-06-14</b> with version of package <b>0.1.4.3001</b>
</p>
