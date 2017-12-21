#' Insert a sequence of symbols.
#'
#' @param symbol (character) A sequence of symbols to be repeated
#' @param start_column (integer) Column position where the sequence begins.
#' @param end_column (integer) Column position where the sequence stops.
#'
#' @export
rs_insert_symbol_seq <- function(symbol,
                                 start_column = 1,
                                 end_column = 80) {

    TEXT = repeat_symbol(as.character(symbol), end_column - start_column)
    rstudioapi::insertText(text = TEXT)
}
