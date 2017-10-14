# From `magrittr` ---------------------------------------------------------

#' Insert \%>\%, \%<>\%, \%$\% and \%T>\%
#'
#' Call this function as an addin to insert \code{ \%>\% } at the cursor position.
#'
#' @note Operator does not work unless package \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso
#' Pipeline operator \link[magrittr]{\%>\%}.\cr
#' Compound assignment pipe operator \link[magrittr]{\%<>\%}.\cr
#' Exposition pipe operator \link[magrittr]{\%$\%} and operator \link[base]{$}.\cr
#' Tee operator \link[magrittr]{\%T>\%}.\cr
#'
#' @name insert_magrittr_operators
#' @export
#' @family 'Insert at cursor position' addins
rs_insert_pipe <- function() {
    rstudioapi::insertText(text = " %>% ")
}

#' @rdname insert_magrittr_operators
#' @export
rs_insert_update_pipe <- function() {
    rstudioapi::insertText(text = " %<>% ")
}

#' @rdname insert_magrittr_operators
#' @export
rs_insert_exposition_pipe <- function() {
    rstudioapi::insertText(text = " %$% ")
}


#' @rdname insert_magrittr_operators
#' @export
rs_insert_tee_pipe <- function() {
    rstudioapi::insertText(text = " %T>% ")
}
