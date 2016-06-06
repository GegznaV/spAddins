
# 'Replace selected symbols' addins ---------------------------------------

#' Replace \code{\\} with \code{\\\\}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace all single backslashes (\code{\\}) with double backslashes
#' (\code{\\\\}) in the seleceted text.
#'
#' @seealso About shortcut keys:
#'  \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
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
#' @seealso About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
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
