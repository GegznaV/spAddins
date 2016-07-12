

# Main "replace" function

replace_in_selection <- function(pattern, replacement){
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        nTXT <- gsub(pattern = pattern, replacement = replacement, TXT, fixed = TRUE)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}



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
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'
#' @export
#' @family 'Replace selected symbols' addins
Back2doubleBackSlash <- function() {
    replace_in_selection(pattern = "\\", replacement = "\\\\")
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
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#' @export
#' @family 'Replace selected symbols' addins
Back2ForwardSlash <- function() {
    replace_in_selection(pattern = "\\", replacement = "/")
}
