

# 'Enclose selected symbols' addins ---------------------------------------


# enclose_selection_with --------------------------------------------------
enclose_selection_with <- function(symbol_ = "", symbol_2 = symbol_) {
    context <- rstudioapi::getActiveDocumentContext()

    for (sel in context$selection) {
        TXT <- sel$text
        Encoding(TXT) <- "UTF-8"

        nTXT <- paste0(symbol_, TXT, symbol_2)

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
    enclose_selection_with(symbol_ = "$")
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
    enclose_selection_with(symbol_ = "$$")
}


# Underscore ----------------------------------

#' Enclose with \code{_}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with underscore (\code{_}).
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
    enclose_selection_with(symbol_ = "_")

}




#' Enclose with \code{__}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with double underscore (\code{__}).
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
    enclose_selection_with(symbol_ = "__")

}

# Asterisk ----------------------------------

#' Enclose with \code{*}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with asterisk (\code{*}).
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
    enclose_selection_with(symbol_ = "*")

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
    enclose_selection_with(symbol_ = "**")

}

#' Enclose with back-tick
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with single back tick \code{``}.
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
    enclose_selection_with(symbol_ = "`")
}


#' Enclose with single tilde
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with single tilde \code{~}.
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
enclose_with_tilde <- function() {
    enclose_selection_with(symbol_ = "~")
}


#' Enclose with double tilde
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with single tilde \code{~~}.
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
enclose_with_tilde2 <- function() {
    enclose_selection_with(symbol_ = "~~")
}


#' Enclose with caret
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with caret \code{^}.
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
enclose_with_tilde2 <- function() {
    enclose_selection_with(symbol_ = "^")
}


