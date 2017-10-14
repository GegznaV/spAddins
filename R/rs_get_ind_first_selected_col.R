#' Get index of the first column in selection
#'
#' @export
rs_get_ind_first_selected_col <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    start_pos <- context$selection[[1]]$range$start[2]
    start_pos
}


#' Get index of the first row in selection
#'
#' @export
rs_get_ind_first_selected_row <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    start_pos <- context$selection[[1]]$range$start[1]
    start_pos
}
