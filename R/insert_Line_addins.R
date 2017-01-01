
#  #' Insert single straight commented (SSC) line
#  #'
#  #' Call this function as an addin to insert \code{# -----} at the c  sor position.
#  #'
#  #' @export
#  #'
#  #'
#  #' @family 'Insert at cursor position' addins
#  insert_SSC_line <- function() {
#      TEXT =
#  "# ---------------------------------------------------------------------  ------ "
#      rstudioapi::insertText(text = TEXT)
#  }
#'
#  #' Insert double straight commented (DSC) line
#  #'
#  #' Call this function as an addin to insert \code{# ======} at the c  sor position.
#  #'
#  #' @export
#  #'
#  #'
#  #' @family 'Insert at cursor position' addins
#  insert_DSC_line <- function() {
#      TEXT =
#          "# =============================================================  ============== "
#      rstudioapi::insertText(text = TEXT)
#  }
#'
#'
#'
#  #' Insert single wavy commented (SWC) line
#  #'
#  #' Call this function as an addin to insert \code{# ~~~~~} at the c  sor position.
#  #'
#  #' @export
#  #'
#  #'
#  #' @family 'Insert at cursor position' addins
#  insert_SWC_line <- function() {
#      TEXT =
#  "# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~ "
#      rstudioapi::insertText(text = TEXT)
#  }


# Not Commented -----------------------------------------------------------

#' Insert single straight (SS) line
#'
#' Call this function as an addin to insert \code{# -----} at the cursor position.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
insert_ss_line_Addin <- function() {
    TEXT =
        "----------------------------------------------------------------------------- "
    rstudioapi::insertText(text = TEXT)
}

#' Insert double straight (DS) line
#'
#' Call this function as an addin to insert \code{# ======} at the cursor position.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
insert_ds_line_Addin <- function() {
    TEXT =
        "============================================================================= "
    rstudioapi::insertText(text = TEXT)
}

#' Insert single wavy (SW) line
#'
#' Call this function as an addin to insert \code{# ~~~~~} at the cursor position.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
insert_sw_line_Addin <- function() {
    TEXT =
        "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
    rstudioapi::insertText(text = TEXT)
}


#' Insert R's code chunk for conspects
#'
#' Call this function as an addin to insert R's code chunk for
#'  conspects at the cursor position.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
insert_chunk_r_Addin <- function() {
    TEXT =
"



###


```{r, eval = F, include = F}

```

```{r}

```



***

"
    rstudioapi::insertText(text = TEXT)
}

#' Insert python's code chunk for conspects
#'
#' Call this function as an addin to insert python's code chunk for conspects at the cursor position.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
insert_chunk_python_Addin <- function() {
    TEXT =
"



###


```{python, eval = F, include = F}

```

```{python}

```



***

"
    rstudioapi::insertText(text = TEXT)
}
