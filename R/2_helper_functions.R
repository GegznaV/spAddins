# Shortcut for `rstudioapi::getActiveDocumentContext()`
get_context <- function() {
    rstudioapi::getActiveDocumentContext()
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Checks if a blank line should be added above the selection
is_blank_line_needed_above <- function(context = get_context()) {
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
# Checks if a blank line should be added below either the selection or
# the first line of the selection.
# where = c("selection", "first line"):
#       "selection" - below whole selection;
#       "first line" - below the first line of the selection.
is_blank_line_needed_below <- function(where = c("selection",
                                             "first line"),
                                   context = get_context()) {
    where <- match.arg(where)
    row <- switch(where,
                  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  "first line" = rs_get_ind_first_selected_row(context),
                  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  "selection" = rs_get_ind_last_selected_row(context),
                  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  stop("Incorrect choice of `where`"))

    # Contents of row below the selection:
    txt <- context$contents[row + 1]

    # If the last line is selected, a blank line should be added:
    if (is.na(txt)) {
        return(TRUE)
    }
    # Remove spaces and check if string is empty:
    cond <- stringi::stri_isempty(gsub("[[:space:]]", "", txt))
    # If not empty (result: FALSE), then an empty row needs to be added:
    isTRUE(!cond)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ensure_blank_line <- function(text,
                              context = get_context(),
                              above = FALSE,
                              below_first = FALSE,
                              below_selection = FALSE) {
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    if (above) {
        if (is_blank_line_needed_above(context)) {
            text <- paste0("\n", text)
        }
    }
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Checks if blank is needed below the first selected line
    if (below_first) {
        if (is_blank_line_needed_below("first line", context)) {
            text <- paste0(text, "\n")
        }
    }
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Checks if blank is needed below the all selection
    if (below_selection) {
        if (is_blank_line_needed_below("selection", context)) {
            text <- paste0(text, "\n")
        }
    }
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    text
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rs_insert_code_block <- function(language = "{r}") {
    rs_enclose_all_with_lines(above = paste0("```", language),
                              below =  "```")
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
