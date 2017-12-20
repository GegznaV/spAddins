# Shortcut for `rstudioapi::getActiveDocumentContext()`
get_context <- function() {
    rstudioapi::getActiveDocumentContext()
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
needs_blank_line_above <- function(context = get_context()) {
    row <- rs_get_ind_first_selected_row(context)

    # Contents of row above the selection:
    txt <- context$contents[row - 1]
    # Remove spaces and check if string is empty:
    cond <- stringi::stri_isempty(gsub("[[:space:]]", "", txt))
    # If not empty (result: FALSE) and not the first row (result: logical(0)),
    # then an empty row needs to be added:
    isTRUE(!cond)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
needs_blank_line_below <- function(context = get_context()) {
    row <- rs_get_ind_last_selected_row(context)

    # Contents of row below the selection:
    txt <- context$contents[row + 1]

    # If the last line, a blank should be added
    if (is.na(txt)) {
        return(TRUE)
    }
    # Remove spaces and check if string is empty:
    cond <- stringi::stri_isempty(gsub("[[:space:]]", "", txt))
    # If not empty (result: FALSE), then an empty row needs to be added:
    isTRUE(!cond)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rs_insert_code_block <- function(language = "{r}") {
    rs_enclose_all_with_lines(above = paste0("```", language),
                              below =  "```")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
