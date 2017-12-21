# Formatting ------------------------------------------------------------
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});
#   \item \code{rmd_...()} as ... (\code{...} and \code{...});

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Add-ins for basic R Markdown formatting.
#'
#' RStudio add-ins, which enclose selected text with symbols that have special
#' interpretation in R Markdown. Function, symbols and interpretation \itemize{
#'   \item \code{rmd_bold()}:           between \code{**} and \code{**} as bold;
#'   \item \code{rmd_italics()}:        between \code{_} and \code{_} as italics;
#'   \item \code{rmd_bold_italics()}:   between \code{**_} and \code{_**}as bold italics;
#'   \item \code{rmd_bold2()}:          between \code{__} and \code{__} as bold;
#'   \item \code{rmd_italics2()}:       between \code{*} and \code{*} as italics;
#'   \item \code{rmd_code_inline()}:    between back-ticks (``) as inline code;
#'   \item \code{rmd_r_code_inline()}:  formats text as inline R code to evaluate;
#'   \item \code{rmd_superscript()}:    between \code{^} and \code{^} as superscript;
#'   \item \code{rmd_subscript()}:      between \code{~} and \code{~} as subscript;
#'   \item \code{rmd_strikethrough()}:  between \code{~~} and \code{~~} as strike-through text.
#' }
#'
#' @name format_rmd
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_bold <- function() {
    rs_enclose_selection_with(symbol = "**")

}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_italics <- function() {
    rs_enclose_selection_with(symbol = "_")

}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_bold_italics <- function() {
    rs_enclose_selection_with(symbol_before = "**_", symbol_after = "_**")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_bold2 <- function() {
    rs_enclose_selection_with(symbol = "__")

}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_italics2 <- function() {
    rs_enclose_selection_with(symbol = "*")

}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_code_inline <- function() {
    rs_enclose_selection_with(symbol = "`")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_code_inline_r <- function() {
    rs_enclose_selection_with(symbol_before = "`r ", symbol_after = "`")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_superscript <- function() {
    rs_enclose_selection_with(symbol = "^")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_subscript <- function() {
    rs_enclose_selection_with(symbol = "~")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname format_rmd
#' @export
rmd_a_strikethrough <- function() {
    rs_enclose_selection_with(symbol = "~~")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
