# 'Enclose selected symbols' addins ---------------------------------------

# rs_enclose_selection_with --------------------------------------------------
#
#' Enclose selection of text with indicated symbols.
#'
#'
#' @param symbol (character) A sequence of symbols to add on both sides of selection.
#' @param symbol_before (character) A sequence of symbols to before the selection
#'                      (overrides value of \code{symbol}).
#' @param symbol_after  (character) A sequence of symbols to add after the selection
#'                      (overrides value of \code{symbol}).
#' @export
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

