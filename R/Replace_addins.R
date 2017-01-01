# Main "replace" function

replace_in_selection <- function(pattern, replacement){
    context <- rstudioapi::getActiveDocumentContext()

    for (sel in context$selection) {
        TXT  <- sel$text
        Encoding(TXT) <- "UTF-8"

        nTXT <- gsub(pattern = pattern, replacement = replacement, TXT,
                     fixed = TRUE)

        rstudioapi::modifyRange(sel$range, as.character(nTXT), context$id)
        break
    }
}



# 'Replace selected symbols' addins ---------------------------------------

#' Replace \code{\\} with \code{\\\\}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace all single backslashes (\code{\\}) with double backslashes
#' (\code{\\\\}) in the seleceted text.
#'
#' @seealso About shortcut keys:
#'  \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'
#' @export
#' @family 'Replace selected symbols' addins
Back2doubleBackSlash <- function() {
    replace_in_selection(pattern = "\\", replacement = "\\\\")
}


#' Replace \code{\\} with \code{/}
#'
#' Select a piece of text with a cursor and call this function as an addin
#' to replace
#' all single backslashes (\code{\\}) with single forwasdslashes (\code{/})
#' in the selected text.
#' @seealso About shortcut keys:
#' \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#' @export
#' @family 'Replace selected symbols' addins
Back2ForwardSlash <- function() {
    replace_in_selection(pattern = "\\", replacement = "/")
}


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#' [!] Correnct md text genereted with Writage
#'
#'
#' @param x A sting.
#'
#' @return A corrected string.
#' @export
#' @examples
#'
#'     pattern     <- c( "\\`", "\\]",   "\\[",    "\\_",  "\\\\" )
#'     replacement <- c( "`",     "]",     "[",      "_",  "\\" )

correct_writage_md <- function(TEXT){
    # filename <- "D:/_Kursai/DataCamp/Intro Statistics with R (Module 1, 2)/R (IntroStat R)/R (IntroStat R) - Copy.md"
    #
    # TEXT <- readLines(filename, encoding = "UTF-8")

    # Remove unnecessay slashes
    pattern     <- c( "\\`", "\\]", "\\[",  "\\_","\\*", "\\\\", " ", "&lt;", "&gt;" )
    replacement <- c( "`",     "]",   "[",    "_", "*",  "\\",  " ", "<", ">" )

    i <- 1

    for (i in 1:length(pattern)){
        TEXT <- gsub(pattern     = pattern[i],
                     replacement = replacement[i],
                     x = TEXT,
                     fixed = TRUE)
    }

    # Remove empty lines
    # TEXT[TEXT != ""]

    return(TEXT)
}


#' [!] Correnct md text genereted with Writage (add-in)
#'
#' @export
#' @family 'Replace selected symbols' addins

correct_writage_md_addin <- function(){
    context <- rstudioapi::getActiveDocumentContext()
    #
    # '\\'

    for (sel in context$selection) {
        TXT  <- sel$text
        Encoding(TXT) <- "UTF-8"

        new_TXT <- correct_writage_md(TXT)

        rstudioapi::modifyRange(sel$range, as.character(new_TXT), context$id)
        break
    }
}

