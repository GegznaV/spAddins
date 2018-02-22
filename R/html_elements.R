# Arrows ------------------------------------------------------------------

#' Insert HTML elements.
#'
#' RStudio add-in to insert HTML elements
#'
#' @name insert_arrows
#' @export
#' @family 'Insert at cursor position' addins
html_insert_space <- function() {
    rstudioapi::insertText(text = " &nbsp; ")
}
