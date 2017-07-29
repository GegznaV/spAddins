#' Tidy up several aspects of an R code in a selection
#'
#' @param str a sting
tidy_r_code <- function(str) {
    # Remove space before bracket
    TXT <- gsub(pattern     = "(\\w|`)\\s([\\(\\)])",
                replacement = "\\1\\2",
                str)
    # Make space afer `for` and `if` before opening bracket
    TXT <- gsub(pattern     = "(for|if)(\\()",
                replacement = "\\1 \\2",
                TXT)

    # Remove speces between and afrer :, ::, and :::
    TXT <- gsub(pattern     = "(.)\\s?(:{1,3})\\s?(.)",
                replacement = "\\1\\2\\3",
                TXT)
    TXT
}


#' Tidy up several aspects of an R code in a selection
#'
#' @export
tidy_r_code_Addin <- function(){
    context <- rstudioapi::getActiveDocumentContext()

    for (sel in context$selection) {
        TXT  <- sel$text
        Encoding(TXT) <- "UTF-8"
        TXT <- tidy_r_code(TXT)
        rstudioapi::modifyRange(sel$range,
                                as.character(TXT),
                                context$id)
        break
    }
}
