# Equations -------------------------------------------------------------------
#' As LaTeX equation
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text to interpret as inline equation (\code{$.$}) or
#' block equotion  (e.g., \code{$$.$$} or \code{\[.\]}) in R Markdown.
#'
#' @export
#' @name rmd_equations
#' @family R Markdown formatting addins
rmd_equation_inline <- function() {
    rs_enclose_selection_with(symbol = "$")
}

#' @rdname rmd_equations
#' @export
#' @family 'Enclose selected symbols' addins
rmd_equation_block <- function() {
    rs_enclose_selection_with(symbol = "$$")
}

#' @rdname rmd_equations
#' @export
#' @family 'Enclose selected symbols' addins
rmd_equation_block2 <- function() {
    rs_enclose_selection_with(symbol_before = "\\[", symbol_after = "\\]")
}
