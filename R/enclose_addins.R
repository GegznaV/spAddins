
# 'Enclose selected symbols' addins ---------------------------------------

#' Enclose with \code{$}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with dolar sign (\code{$}).
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
enclose_with_dolar <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "$"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}


#' Enclose with \code{$$}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with double dolar sign (\code{$$}).
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
enclose_with_dolar2 <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "$$"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
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
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "_"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
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
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "__"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
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
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "*"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
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
    context <- rstudioapi::getActiveDocumentContext()
    # '\\'

    for (sel in context$selection) {
        TXT <- sel$text
        SYMBOL <- "**"
        nTXT <- paste0(SYMBOL, TXT, SYMBOL)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}
