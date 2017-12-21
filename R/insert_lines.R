# Insert lines ---------------------------------------------------------------

#' @name insert_symbol_sequences
#' @title Insert various lines.
#' @description
#' Use
#' \code{rs_insert_ss_line()} to insert \code{------};\cr
#' \code{rs_insert_ds_line()} to insert \code{======};\cr
#' \code{rs_insert_dw_line()} to insert \code{~~~~~~} at the cursor position.
#'
#' @param start (numeric) The number of column the line begins at.
#' @param end (numeric) The number of column the line ends at.
#'
#' @family 'Insert at cursor position' addins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_symbol_sequences
#' @export
rs_insert_line_ss <- function(start = rs_get_ind_first_selected_col(), end = 79) {
    rs_insert_symbol_seq("-", start, end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_symbol_sequences
#' @export
rs_insert_line_ds <- function(start = rs_get_ind_first_selected_col(), end = 79) {
    rs_insert_symbol_seq("=", start, end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name insert_symbol_sequences
#' @export
rs_insert_line_sw <- function(start = rs_get_ind_first_selected_col(), end = 79) {
    rs_insert_symbol_seq("~", start, end)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
