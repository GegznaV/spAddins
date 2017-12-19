#' Insert text at the beginning of the row
#'
#' @param row (integer) The index of the row.
#' @param text (character) The text to add.
#'
#' @export
rs_insert_at_row_start <- function(row,
                                   text = NULL) {
    row <- row[1]
    location <- list(start = c(row, 1),
                     end   = c(row, 1))
    class(location) <- "document_range"

    rstudioapi::insertText(location = location, text = text)
}
