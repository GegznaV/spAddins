#' Repeat sequence of symbols
#'
#' @param text (character) The symbol (or sequence of symbols) to be repeated
#'             until desired length of string.
#' @param length.out (integer) The length of the sequence.
#'
#' @return Sting of defined length.
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
#'
#' repeat_symbol(".", 10)
#'
#' repeat_symbol("..+", 10)
repeat_symbol <- function(text, length.out) {
  rep_len(text, length.out) %>%
    paste0(collapse = "") %>%
    substr(1, length.out)
}
