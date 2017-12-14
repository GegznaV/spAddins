# Name: Correct md generated with "Writage"
# Description: Corrects md punctuaction in the selected text
# Binding: correct_writage_md_addin
# Interactive: false
#
# Name: Insert R code chunk for conspects
# Description: Insert chunk for conspects.
# Binding: insert_chunk_r_Addin
# Interactive: false
#
# Name: Insert python code chunk for conspects
# Description: Insert chunk for conspects.
# Binding: insert_chunk_python_Addin
# Interactive: false

# =============================================================================
# Deprecated
# =============================================================================

# "sp" family operators by VG --------------------------------------------------




#' Insert \%++\%
#'
#' Call this function as an addin to insert \code{ \%++\% } at the cursor position.
#' @note Operator does not work unless a package which contains this operator is loaded.
#' @export
#' @family 'Insert at cursor position' addins

insertPaste0_Addin <- function() {
    rstudioapi::insertText(text = " %++% ")
}

#' Insert \%.+.\%
#'
#' Call this function as an addin to insert \code{ \%.+.\% } at the cursor position.
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}. \cr
#'
#' @examples
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'

insertPaste_Addin <- function() {
    rstudioapi::insertText(text = " %.+.% ")
}

#' Insert \%if.NULL\%
#'
#' Call this function as an addin to insert \code{ \%if.NULL\% } at the cursor position.
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.\cr
#'
#' @examples
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'
insertIfNULL_Addin <- function() {
    rstudioapi::insertText(text = " %if.NULL% ")
}



#' Insert \%if_null\%
#'
#' Call this function as an addin to insert \code{ \%if_null\% } at the cursor position.
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}. \cr
#'
#' @examples
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'
insert_if_null_Addin <- function() {
    rstudioapi::insertText(text = " %if_null% ")
}


#' Insert \%if_null_or_len0\%
#'
#' Call this function as an addin to insert \code{ \%if_null_or_len0\% } at the cursor position.
#'
#' @note Operator does not work unless a package which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}. \cr
#' @examples
#' # To call the functions with keyboard shortcuts explore
#' # link "keyboard shortcuts" in section "See also".
#'
insert_if_null_or_len0_Addin <- function() {
    rstudioapi::insertText(text = " %if_null_or_len0% ")
}



