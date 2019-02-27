# Code -------------------------------------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name rmd_code_block
#' @title Convert rows into the block of code.
#' @description
#' RStudio add-in to insert selected lines into code block: \itemize{
#'    \item \code{rmd_code_block()} - verbatim code block;
#'    \item \code{rmd_code_block_r()} - R code block.
#' }.
#' \code{rmd_code_block_r_split()} - splits block of R code.
#'
#'
#' These functions internally use function
#' \code{rs_enclose_all_with_lines()} -
#' that adds lines above and below the selection.
#'
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r <- function() {
    rs_enclose_all_with_lines(above = "```{r}", below = "```")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block <- function() {
    rs_enclose_all_with_lines(above = "```", below = "```")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_code_block
#' @export
rmd_code_block_r_split <- function() {
    rs_enclose_all_with_lines(above = "```\n\n```{r}")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


