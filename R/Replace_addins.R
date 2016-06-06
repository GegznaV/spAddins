
# 'Replace selected symbols' addins ---------------------------------------

#' Replace \code{\\} with \code{\\\\}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace all single backslashes (\code{\\}) with double backslashes
#' (\code{\\\\}) in the seleceted text.
#'
#'
#' @export
#' @family 'Replace selected symbols' addins
Back2doubleBackSlash <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        nTXT <- gsub("\\","\\\\", TXT, fixed = TRUE)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}


#' Replace \code{\\} with \code{/}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace
#' all single backslashes (\code{\\}) with single forwasdslashes (\code{/})
#' in the selected text.
#' @export
#' @family 'Replace selected symbols' addins
Back2ForwardSlash <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        nTXT <- gsub("\\","/", TXT, fixed = TRUE)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}
