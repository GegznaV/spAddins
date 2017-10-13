# Not Commented -----------------------------------------------------------

#' Insert single straight (SS) line
#'
#' Call this function as an addin to insert \code{-----} at the cursor position.
#'
#' @param start (numeric) The number of column the line begins at.
#' @param end (numeric) The number of column the line ends at.
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
rs_insert_ss_line <- function(start = selection_start_column(), end = 70) {
    rs_insert_symbol_seq("-", start, end)
}

#' Insert double straight (DS) line
#'
#' Call this function as an addin to insert \code{======} at the cursor position.
#'
#' @param start (numeric) The number of column the line begins at.
#' @param end (numeric) The number of column the line ends at.
#'
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
rs_insert_ds_line <- function(start = selection_start_column(), end = 70) {
    rs_insert_symbol_seq("=", start, end)
}

#' Insert single wavy (SW) line
#'
#' Call this function as an addin to insert \code{~~~~~} at the cursor position.
#' @param start (numeric) The number of column the line begins at.
#' @param end (numeric) The number of column the line ends at.
#' @export
#'
#'
#' @family 'Insert at cursor position' addins
rs_insert_sw_line <- function(start = selection_start_column(), end = 70) {
    rs_insert_symbol_seq("~", start, end)
}




