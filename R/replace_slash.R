# Main "replace" function
rs_replace_in_selection <- function(pattern, replacement) {
    context <- rstudioapi::getActiveDocumentContext()

    sel <-  context$selection[[1]]
    old_text  <- sel$text
    Encoding(old_text) <- "UTF-8"

    new_text <- gsub(pattern = pattern,
                     replacement = replacement,
                     x = old_text,
                     fixed = TRUE)

    rstudioapi::modifyRange(location = sel$range,
                            text = as.character(new_text),
                            id = context$id)

}

# 'Replace selected symbols' addins ---------------------------------------

#' Replace slash
#'
#' Select a piece of text with a cursor and convert beteewn slashes in the
#' selected text: \itemize{
#'    \item \code{rs_replace_slash_bs2d} single back-slash into double back-slash;
#'    \item \code{rs_replace_slash_bd2s} double back-slash into single back-slash;
#'    \item \code{rs_replace_slash_b2fw} back-slash into forward-slash;
#'    \item \code{rs_replace_slash_fw2b} forward-slash into back-slash.
#' }
#'
#'
#' @name replace_slash
#' @export
#' @family 'Replace selected symbols' addins
rs_replace_slash_bs2d <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "\\\\")
}

#' @rdname replace_slash
#' @export
rs_replace_slash_bd2s <- function() {
    rs_replace_in_selection(pattern = "\\\\", replacement = "\\")
}

#' @rdname replace_slash
#' @export
rs_replace_slash_b2fw <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "/")
}

#' @rdname replace_slash
#' @export
rs_replace_slash_fw2b <- function() {
    rs_replace_in_selection(pattern = "/", replacement = "\\")
}
