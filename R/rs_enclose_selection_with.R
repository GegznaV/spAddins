# 'Enclose selected symbols' addins ---------------------------------------

#' Enclose selection of text with indicated symbols.
#'
#' Enclose selection of text with certain symbols which usually have special
#' meaning in R Markdown files.
#'
#' @details
#' If text is selected, the cursor is placed after the modified selection.
#' If no text is selected, the cursor is placed between the inserted symbols.
#'
#' @param symbol (character) A sequence of symbols to add on both sides of selection.
#' @param symbol_before (character) A sequence of symbols to before the selection
#'                      (overrides value of \code{symbol}).
#' @param symbol_after  (character) A sequence of symbols to add after the selection
#'                      (overrides value of \code{symbol}).
#' @inheritParams rs_get_ind
#'
#' @export
rs_enclose_selection_with <- function(symbol = "",
                                      symbol_before = symbol,
                                      symbol_after  = symbol,
                                      context = get_context()) {

    # For the first selection only
    sel <- context$selection[[1]]
    old_text <- sel$text
    Encoding(old_text) <- "UTF-8"

    new_text <- paste0(symbol_before, old_text, symbol_after)

    rstudioapi::insertText(location = sel$range,
                           text = as.character(new_text),
                           id = context$id)

    # If no text is selected, cursor is placed between the symbols.
    if (stringi::stri_isempty(old_text)) {
        rng <- sel$range
        rng[[1]]["column"] <- rng[[1]]["column"] + nchar(symbol_before)

        rstudioapi::setCursorPosition(position = rng[[1]],
                                      id = context$id)
    }
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
