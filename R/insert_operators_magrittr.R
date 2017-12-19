# From `magrittr` ---------------------------------------------------------

#' Insert \%>\%, \%<>\%, \%$\% and \%T>\%
#'
#' These add-ins insert operators \code{\%>\%}, \code{\%<>\%}, \code{\%$\%},
#' and \code{\%T>\%} at the cursor position.
#' The operators are defined in package \pkg{magrittr}.
#'
#' @note Operator does not work unless package \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso
#' \itemize{
#'    \item Forward pipeline operator \link[magrittr]{\%>\%}
#'    \item Compound assignment pipe operator \link[magrittr]{\%<>\%}
#'    \item Exposition pipe operator \link[magrittr]{\%$\%} and operator \link[base]{$}
#'    \item Tee operator \link[magrittr]{\%T>\%}
#' }
#'
#' @name insert_magrittr_operators
#' @export
#' @family 'Insert at cursor position' add-ins
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
