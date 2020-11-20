# Arrows ------------------------------------------------------------------

#' Insert arrow (->, ->>, <-, <<-).
#'
#' RStudio add-in to insert either \code{->}, \code{->>},
#' \code{<-} or \code{<<-} at the cursor position.
#'
#' @export
#' @note use hotkeys combination \code{ALT} + \code{-} to insert \code{<-} in RStudio.
#'
#' @seealso Assignment operators \link[base]{assignOps}.\cr
#' @examples
#' \dontrun{
#' \donttest{
#' library(spAddins)
#'
#' rs_insert_arrow_rl()
#' ## <-
#'
#' rs_insert_arrow_rl2()
#' ## <<-
#'
#' rs_insert_arrow_lr()
#' ## ->
#'
#' rs_insert_arrow_lr2()
#' ## ->>
#' }
#' }
#' @name insert_arrows
#' @family 'Insert at cursor position' addins
rs_insert_arrow_rl <- function() {
    rstudioapi::insertText(text = "<-")
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_rl2 <- function() {
    rstudioapi::insertText(text = "<<-")
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_lr <- function() {
    rstudioapi::insertText(text = " -> ")
}

#' @export
#' @rdname insert_arrows
rs_insert_arrow_lr2 <- function() {
    rstudioapi::insertText(text = "->>")
}
