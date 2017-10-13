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
#' to enclose the text to interpret as inline equation (\code{$.$}) or
#' block equotion  (e.g., \code{$$.$$} or \code{\[. \]}) in R Markdown.
#'
#' @export
#' @family 'Enclose selected symbols' addins
rs_equation_inline <- function() {
    rs_enclose_selection_with(symbol = "$")
}


#' @rdname rs_equation_inline
#' @export
#' @family 'Enclose selected symbols' addins
rs_equation_block <- function() {
    rs_enclose_selection_with(symbol = "$$")
}

#' @rdname rs_equation_inline
#' @export
#' @family 'Enclose selected symbols' addins
rs_equation_block2 <- function() {
    rs_enclose_selection_with(symbol_before = "\\[", symbol_after = "\\]")
}


# Underscore ----------------------------------

#' Enclose with \code{_}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to enclose the text with underscore (\code{_}).
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
#' @export
#' @family 'Enclose selected symbols' addins
enclose_with_italic_bold <- function() {
    rs_enclose_selection_with(symbol_before = "**_", symbol_after = "_**")
}


