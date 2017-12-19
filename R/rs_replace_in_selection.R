# Main "replace" function
#' Replace text in selection
#'
#' @param pattern (character) A fixed pattern of text to be replaced
#'                            (not a regular expression).
#' @param replacement (character) The replacement text.
#'
#' @export
rs_replace_in_selection <- function(pattern, replacement) {
    context <- rstudioapi::getActiveDocumentContext()

    sel <-  context$selection[[1]]
    old_text  <- sel$text
    Encoding(old_text) <- "UTF-8"

    new_text <- gsub(pattern = pattern,
                     replacement = replacement,
                     x = old_text,
                     fixed = TRUE)

    rstudioapi::modifyRange(location = sel$range,
                            text = as.character(new_text),
                            id = context$id)

}
