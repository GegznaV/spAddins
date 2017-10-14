# Code -------------------------------------------------------------------

#' Convert rows into the block of code
#'
#' RStudio addin to insert selected lines into code block: \itemize{
#'    \item \code{rmd_r_code_block()} - R code block;
#'    \item \code{rmd_code_block()} - verbatim code block.
#' }
#' \code{rs_insert_lines} - function that adds lines above and below the selection.
#'
#' @name rmd_code_block
#' @export
#' @family R Markdown formatting addins
#'
rmd_r_code_block <- function() {
    rs_insert_lines(above = "```{r}", below = "```")
}

#' @rdname rmd_code_block
#' @export
rmd_code_block <- function() {
    rs_insert_lines(above = "```", below = "```")
}


# RStudio addin to
#' @param above (character) Text to be inserted in line above the selection.
#' @param below (character) Text to be inserted in line below the selection.
#'
#' @rdname rmd_code_block
#' @export
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
