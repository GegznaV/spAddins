
# Base R operators ------------------------------------------------------------



# =============================================================================
#' Insert \%*\%
#'
#' Call this function as an addin to insert \code{ \%*\% } at the cursor position.
#'
#' @export
#' @seealso Operator \link[base]{\%*\%} for matrix multiplication.
#'
#' @family 'Insert at cursor position' addins
rs_insert_matrix_multiplication <- function() {
    rstudioapi::insertText(text = " %*% ")
}


#' Insert \%in\%
#'
#' Call this function as an addin to insert \code{ \%in\% } at the cursor position.
#'
#' @export
#' @seealso Operator \link[base]{\%in\%}.
#'
#' @family 'Insert at cursor position' addins
rs_insert_infix_in <- function() {
    rstudioapi::insertText(text = " %in% ")
}

#' Insert \%!in\%
#'
#' Call this function as an addin to insert \code{ \%!in\% } at the cursor position.
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#' @family 'Insert at cursor position' addins
#' @seealso Operator \link[base]{\%in\%}.
rs_insert_infix_not_in <- function() {
    rstudioapi::insertText(text = " %!in% ")
}



#' Insert \%R\%
#'
#' Call this function as an addin to insert \code{ \%R\% } at the cursor position.
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @export
#'
#' @seealso Operator \link[rebus.base]{\%R\%} in \pkg{rebus}.
#' @family 'Insert at cursor position' addins
#'
rs_insert_infix_R <- function() {
    rstudioapi::insertText(text = " %R% ")
}
