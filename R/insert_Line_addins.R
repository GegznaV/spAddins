
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
#  "# --------------------------------------------------------------------------- "
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
#          "# =========================================================================== "
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
#  "# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
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



