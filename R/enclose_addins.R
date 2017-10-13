

# 'Enclose selected symbols' addins ---------------------------------------


# rs_enclose_selection_with --------------------------------------------------
rs_enclose_selection_with <- function(symbol = "",
                                      symbol_before = symbol,
                                      symbol_after  = symbol) {
    context <- rstudioapi::getActiveDocumentContext()

    # For the first selection only
    sel <- context$selection[[1]]
    old_text <- sel$text
    Encoding(old_text) <- "UTF-8"

    new_text <- paste0(symbol_before, old_text, symbol_after)

    rstudioapi::insertText(location = sel$range,
                           text = as.character(new_text),
                           id = context$id)

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
    rs_enclose_selection_with(symbol = "$")
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
    rs_enclose_selection_with(symbol = "$$")
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
    rs_enclose_selection_with(symbol = "_")

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
    rs_enclose_selection_with(symbol = "__")

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
    rs_enclose_selection_with(symbol = "*")

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
    rs_enclose_selection_with(symbol = "**")

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
    rs_enclose_selection_with(symbol = "`")
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
    rs_enclose_selection_with(symbol = "~")
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
    rs_enclose_selection_with(symbol = "~~")
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
    rs_enclose_selection_with(symbol = "^")
}

# Enclose with dollar sign ($) ---------------------------------------------


#' Enclose with \code{**_  _**}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with symbols, which are interpreted as "italic bold"
#' in markdown (\code{**_ _**}).
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
enclose_with_italic_bold <- function() {
    rs_enclose_selection_with(symbol_before = "**_", symbol_after = "_**")
}
