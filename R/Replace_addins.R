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
rs_replace_single_with_double_backslash <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "\\\\")
}

#' Replace \code{\\\\} with \code{\\}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace all double backslashes (\code{\\\\}) with single backslashes
#' (\code{\\}) in the seleceted text.
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
rs_replace_double_with_single_backslash <- function() {
    rs_replace_in_selection(pattern = "\\\\", replacement = "\\")
}


#' Replace \code{\\} with \code{/}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace
#' all single back-slashes (\code{\\}) with single forwasd-slashes (\code{/})
#' in the selected text.
#' @seealso About shortcut keys:
#' \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#' @export
#' @family 'Replace selected symbols' addins
rs_replace_backslash_with_forwasdslash <- function() {
    rs_replace_in_selection(pattern = "\\", replacement = "/")
}


