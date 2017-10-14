
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/spAddins)](https://cran.r-project.org/package=spAddins) [![GitHub version](https://img.shields.io/badge/GitHub-0.2.0.9000-brightgreen.svg)](https://github.com/GegznaV/spAddins) [![Travis-CI Build Status](https://travis-ci.org/GegznaV/spAddins.png?branch=master)](https://travis-ci.org/GegznaV/spAddins) [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![Rdoc](http://www.rdocumentation.org/badges/version/spAddins)](http://www.rdocumentation.org/packages/spAddins) [![Last-update](https://img.shields.io/badge/Updated%20on-2017--10--14-yellowgreen.svg)](/commits/master)

<!--

-->

------------------------------------------------------------------------

<img src="http://gegznav.github.io/spAddins/logo.png" align="right" width="15%" height="15%"/>

R package `spAddins`
====================

`spAddins` is an R package that provides a set of RStudio addins which are designed to be used in combination with user-defined RStudio keyboard shortcuts. These addins either:

1.  **insert** text at the cursor position (e.g. insert operators `%>%`, `<<-`, `%$%`, etc.),
2.  **replace** symbols in selected pieces of text (e.g., convert backslashes to forward slashes which results in strings like `"c:\data\"` converted into `"c:/data/"`) or
3.  **enclose** text with special symbols (e.g., converts "bold" into "\*\*bold\*\*" that is interpreted as "**bold**") which is convenient for editing R Markdown files.

Install package
---------------

Install released version from CRAN:

``` r
install.packages("spAddins")
```

Install development version from GitHub:

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("GegznaV/spAddins")
```

Recommended workflow and a few examples
---------------------------------------

Get started online <http://gegznav.github.io/spAddins/articles/v1_workflow.html>

And offline:

``` r
vignette("v1_workflow", package = "spAddins")
```

<!-- browseVignettes("spAddins") -->

------------------------------------------------------------------------

More information at <http://gegznav.github.io/spAddins/>

------------------------------------------------------------------------

TO DO:

1.  Interactive addin, that enables to select properties of the list;
2.  Write unit tests.
