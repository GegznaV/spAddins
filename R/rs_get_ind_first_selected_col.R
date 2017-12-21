#' @name rs_get_ind
#' @title  Get indices from the selection
#' @description
#' Get index of the first/last row/column in the selection.
#'
#' @param context Object with context of active R Studio document
#'                (class \code{document_context}).
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rs_get_ind
#' @export
rs_get_ind_first_selected_col <- function(context = get_context()) {
    context$selection[[1]]$range$start["column"]
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rs_get_ind
#' @export
rs_get_ind_last_selected_col <- function(context = get_context()) {
    context$selection[[1]]$range$end["column"]
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rs_get_ind
#' @export
rs_get_ind_first_selected_row <- function(context = get_context()) {
    context$selection[[1]]$range$start["row"]
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rs_get_ind
#' @export
rs_get_ind_last_selected_row <- function(context = get_context()) {
    context$selection[[1]]$range$end["row"]
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
