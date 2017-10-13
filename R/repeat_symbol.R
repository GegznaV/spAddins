# ==========================================================================
repeat_symbol <- function(text, length.out) {
    paste0(rep(text, length.out = length.out), collapse = "")
}
# ==========================================================================
selection_start_column <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    start_pos <- context$selection[[1]]$range$start[2]
    start_pos
}
# ==========================================================================
rs_insert_symbol_seq <- function(symbol,
                                 start_column = 1,
                                 end_column = 80) {

    TEXT = repeat_symbol(as.character(symbol), end_column - start_column)
    rstudioapi::insertText(text = TEXT)
}
# ==========================================================================
