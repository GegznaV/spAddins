rs_insert_code_block <- function(language = "{r}") {
    rs_enclose_all_with_lines(above = paste0("```", language),
                              below =  "```")
}


# RStudio addin to
#
#
#' Enclose selection with lines
#'
#' Enclose selected rows with lines above and below: \itemize{
#'     \item \code{rs_enclose_all_with_lines()} - all selected rows;
#'     \item \code{rs_enclose_first_row_with_lines()} - the first selected row only.
#' }
#'
#' @param above (character) Text to be inserted in the row above the selection.
#' @param below (character) Text to be inserted in the row below the selection (or the first row).
#'
#' @export
rs_enclose_all_with_lines <- function(above = NA, below = NA) {
    sel <- rstudioapi::getSourceEditorContext()$selection[[1]]

    range_ <- range_first <- range_last <- sel$range

    range_first$start <- range_first$end <- c(range_$start[1]  , 1)
    range_last$start <-   range_last$end <- c(range_$end[1] + 1, 1)

    # To avoid error, at first the insert the last line, then the first one.
    rstudioapi::insertText(location = range_last,
                           text = stringr::str_c(below, "\n"))

    rstudioapi::insertText(location = range_first,
                           text = stringr::str_c(above, "\n"))
}




#' @rdname rs_enclose_all_with_lines
#' @export
rs_enclose_first_row_with_lines <- function(above = NA, below = NA) {
    sel <- rstudioapi::getSourceEditorContext()$selection[[1]]

    range_ <- range_first <- range_second <- sel$range

    range_first$start  <- range_first$end  <- c(range_$start[1]    , 1)
    range_second$start <- range_second$end <- c(range_$start[1] + 1, 1)

    # To avoid error, at first insert the second line, then modiry the first one.
    rstudioapi::insertText(location = range_second,
                           text = stringr::str_c(below, "\n"))

    rstudioapi::insertText(location = range_first,
                           text = stringr::str_c(above, "\n"))
}
