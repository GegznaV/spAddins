# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Enclose selection with lines.
#'
#' Enclose selected rows with lines above and below: \itemize{
#'     \item \code{rs_enclose_all_with_lines()} - all selected rows;
#'     \item \code{rs_enclose_first_row_with_lines()} - the first selected row only.
#' }
#'
#' @param above (character) Text to be inserted in the row above the selection.
#' @param below (character) Text to be inserted in the row below the selection
#'                         (or the first row).
#'
#' @param ensure_blank_above (logical)
#'      If \code{TRUE}, checks if there is a
#'      blank line above the selection. If line is not blank, a blank line
#'      is added. If \code{FALSE}, blank line is not added.
#'
#' @param context
#'
#' @export
rs_enclose_all_with_lines <- function(above = NA, below = NA,
                                      ensure_blank_above = FALSE,
                                      context = get_context()) {

    sel <- context$selection[[1]]

    range_ <- range_first <- range_last <- sel$range

    range_first$start <- range_first$end <- c(range_$start[1]  , 1)
    range_last$start <-   range_last$end <- c(range_$end[1] + 1, 1)

    above <- ensure_blank_line(text = above,
                               context = context,
                               above = ensure_blank_above)

    # To avoid error, at first the last line is inserted, then the first one.
    rstudioapi::insertText(location = range_last,
                           text = stringr::str_c(below, "\n"))

    rstudioapi::insertText(location = range_first,
                           text = stringr::str_c(above, "\n"))
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rs_enclose_all_with_lines
#' @export
rs_enclose_first_row_with_lines <- function(above = NA,
                                            below = NA,
                                            ensure_blank_above = FALSE,
                                            context = get_context()) {

    sel <- context$selection[[1]]

    range_ <- range_first <- range_second <- sel$range

    range_first$start  <- range_first$end  <- c(range_$start[1],     1)
    range_second$start <- range_second$end <- c(range_$start[1] + 1, 1)

    above <- ensure_blank_line(text = above,
                               context = context,
                               above = ensure_blank_above)

    # To avoid error, at first insert the second line, then modify the first one.
    rstudioapi::insertText(location = range_second,
                           text = stringr::str_c(below, "\n"),
                           id = context$id)

    rstudioapi::insertText(location = range_first,
                           text = stringr::str_c(above, "\n"),
                           id = context$id)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
