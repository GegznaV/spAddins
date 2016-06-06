

# Arrows ------------------------------------------------------------------

#' Insert arrow (->, ->>, <<-)
#'
#' Call these functions as addins to insert either \code{->},\code{->>},
#' or \code{<<-} at the cursor position.
#'
#' @export
#' @note use hotkeys combination \code{ALT + -} to insert \code{<-} in RStudio.
#' @seealso  Assignment operators \link[base]{assignOps}
#' @family 'Insert at cursor position' addins
insertArrowLR2_Addin <- function() {
    rstudioapi::insertText(text = "<<-")
}

#' @export
#' @rdname insertArrowLR2_Addin
insertArrowRL_Addin <- function() {
    rstudioapi::insertText(text = "->")
}

#' @export
#' @rdname insertArrowLR2_Addin
insertArrowRL2_Addin <- function() {
    rstudioapi::insertText(text = "->>")
}
