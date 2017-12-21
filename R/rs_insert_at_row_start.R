# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Insert text at the beginning of the row.
#'
#' @param row (integer) The index of the row.
#' @param text (character) The text to add.
#'
#' @export
rs_insert_at_row_start <- function(row,
                                   text = NULL,
                                   id = NULL) {
    row <- row[1]
    location <- list(start = c(row, 1),
                     end   = c(row, 1))
    class(location) <- "document_range"

    rstudioapi::insertText(location = location,
                           text = text,
                           id = id)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Insert text at the beginning of the first selected row.
#' @param text (character) The text to add.
#' @param ensure_blank_above (logical)
#'      If \code{TRUE}, checks if there is a
#'      blank line above/bolow the selection. If line is not blank,
#'       a blank line is added. If \code{FALSE}, blank line is not added.
#' @inheritParams rs_get_ind
#' @export
rs_insert_before_first_selected_row <- function(text = NULL,
                                                ensure_blank_above = FALSE,
                                                context = get_context()) {

    row <- rs_get_ind_first_selected_row(context)

    location <- list(start = c(row, 1),
                     end   = c(row, 1))
    class(location) <- "document_range"

    text <- ensure_blank_line(text, context, above = ensure_blank_above)

    rstudioapi::insertText(
        location = location,
        text = text,
        id = context$id
    )
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

