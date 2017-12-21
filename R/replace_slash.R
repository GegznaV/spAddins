# 'Replace selected symbols' addins ---------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Replace slash.
#'
#' RStudio add-in to manage various types of slashes.
#' Select a piece of text with a cursor and do the necessary replacement
#' operation in the selected text: \itemize{
#'    \item \code{rs_replace_slash_bs2d} single back-slash into double back-slash;
#'    \item \code{rs_replace_slash_bd2s} double back-slash into single back-slash;
#'    \item \code{rs_replace_slash_b2fw} back-slash into forward-slash;
#'    \item \code{rs_replace_slash_fw2b} forward-slash into back-slash.
#' }
#'
#' @name replace_slash
#' @export
#' @family 'Replace selected symbols' add-ins
rs_replace_slash_bs2d <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "\\\\")
}

#' @rdname replace_slash
#' @export
rs_replace_slash_bd2s <- function() {
    rs_replace_in_selection(pattern = "\\\\", replacement = "\\")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname replace_slash
#' @export
rs_replace_slash_b2fw <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "/")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname replace_slash
#' @export
rs_replace_slash_fw2b <- function() {
    rs_replace_in_selection(pattern = "/", replacement = "\\")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
