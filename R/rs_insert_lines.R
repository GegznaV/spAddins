rs_insert_lines <- function(above = NA, below = NA) {
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
