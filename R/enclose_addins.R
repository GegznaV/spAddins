
# 'Enclose selected symbols' addins ---------------------------------------

# enclose_selection_with --------------------------------------------------
enclose_selection_with <- function(SYMBOL = "") {
    context <- rstudioapi::getActiveDocumentContext()

    for (sel in context$selection) {
        TXT <- sel$text

        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}


# Enclose with dollar sign ($) ---------------------------------------------


#' Enclose with \code{$}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with dollar sign (\code{$}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_dollar <- function() {
    enclose_selection_with(SYMBOL = "$")
}


#' Enclose with \code{$$}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with double dollar sign (\code{$$}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_dollar2 <- function() {
    enclose_selection_with(SYMBOL = "$$")
}


# Underscore ----------------------------------

#' Enclose with \code{_}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with underscore sign (\code{_}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_underscore <- function() {
    enclose_selection_with(SYMBOL = "_")

}




#' Enclose with \code{__}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with double underscore sign (\code{__}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_underscore2 <- function() {
    enclose_selection_with(SYMBOL = "__")

}

# Asterisk ----------------------------------

#' Enclose with \code{*}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with asterisk sign (\code{*}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_asterisk <- function() {
    enclose_selection_with(SYMBOL = "*")

}


#' Enclose with \code{**}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with double asterisk sign (\code{**}).
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
#' @family 'Enclose selected symbols' addins
enclose_with_asterisk2 <- function() {
    enclose_selection_with(SYMBOL = "**")

}

#' Enclose with back-tick
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with single back tick sign \code{``}.
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
#' @family 'Enclose selected symbols' addins
enclose_with_backtick <- function() {
    enclose_selection_with(SYMBOL = "`")
}





