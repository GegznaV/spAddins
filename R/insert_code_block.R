# Code -------------------------------------------------------------------

#' Convert rows into the block of code
#'
#' RStudio addin to insert selected lines into code block: \itemize{
#'    \item \code{rmd_r_code_block()} - R code block;
#'    \item \code{rmd_code_block()} - verbatim code block.
#' }
#' \code{rs_enclose_all_with_lines} - function that adds lines above and below the selection.
#'
#' @name rmd_code_block
#' @export
#' @family R Markdown formatting addins
#'
rmd_code_block_r <- function() {
    rs_enclose_all_with_lines(above = "```{r}", below = "```")
}

#' @rdname rmd_code_block
#' @export
rmd_code_block <- function() {
    rs_enclose_all_with_lines(above = "```", below = "```")
}



