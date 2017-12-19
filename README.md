
<!-- TO DO: -->
<!-- 1. Create an interactive addin, that enables to select formatting options; -->
<!-- 2. Write unit tests. -->
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/spAddins)](https://cran.r-project.org/package=spAddins) [![GitHub version](https://img.shields.io/badge/GitHub-0.2.0-brightgreen.svg)](https://github.com/GegznaV/spAddins) [![Travis-CI Build Status](https://travis-ci.org/GegznaV/spAddins.png?branch=master)](https://travis-ci.org/GegznaV/spAddins) [![Updated-on](https://img.shields.io/badge/Updated%20on-2017--12--19-yellowgreen.svg)](/commits/master) [![Research software impact](http://depsy.org/api/package/cran/spAddins/badge.svg)](http://depsy.org/package/r/spAddins)

<!-- [![Rdoc](http://www.rdocumentation.org/badges/version/spAddins)](http://www.rdocumentation.org/packages/spAddins) -->
<!--

-->

------------------------------------------------------------------------

<img src="http://gegznav.github.io/spAddins/logo.png" align="right" width="15%" height="15%"/>

R package `spAddins`
====================

`spAddins` is an R package that provides a set of RStudio addins which are designed to be used in combination with user-defined RStudio keyboard shortcuts. These addins either:

1.  **format text in R Markdown documents**:
    -   **enclose** either selected text or selected rows with special symbols and text gets inerpreted in a special way when rendered with R Markdown (e.g., converts "bold" into "\*\*bold\*\*" that is interpreted as "**bold**").
2.  **insert** text (e.g., operators `%>%`, `<<-`, `%$%`) at the cursor position;
3.  **replace** symbols in selected pieces of text (e.g., convert backslashes to forward slashes which results in strings like `"c:\data\"` converted into `"c:/data/"`).

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
