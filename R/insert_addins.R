
# Base R operators ---------------------------------------------------------------------


#' Insert \%*\%
#'
#' Call this function as an addin to insert \code{ \%*\% } at the cursor position.
#'
#' @export
#' @seealso Operator \link[base]{\%*\%} for matrix multiplication.\cr
#'  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#'
#' @family 'Insert at cursor position' addins
insertMatMuliplication_Addin <- function() {
    rstudioapi::insertText(text = " %*% ")
}


#' Insert \%in\%
#'
#' Call this function as an addin to insert \code{ \%in\% } at the cursor position.
#'
#' @export
#' @seealso Operator \link[base]{\%in\%}.\cr
#'  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#'
#' @family 'Insert at cursor position' addins
insertIn_Addin <- function() {
    rstudioapi::insertText(text = " %in% ")
}

# "sp" family operators by VG --------------------------------------------------


#' Insert \%!in\%
#'
#' Call this function as an addin to insert \code{ \%!in\% } at the cursor position.
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @export
#' @family 'Insert at cursor position' addins
#' @seealso Operator \link[base]{\%in\%}.\cr
#'  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#'
insertNotIn_Addin <- function() {
    rstudioapi::insertText(text = " %!in% ")
}



#' Insert \%++\%
#'
#' Call this function as an addin to insert \code{ \%++\% } at the cursor position.
#' @note Operator does not work unless library which contains this operator is loaded.
#' @export
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#'
# @seealso Operator \code{\link[spMisc]{\%++\%}}
insertPaste0_Addin <- function() {
    rstudioapi::insertText(text = " %++% ")
}

#' Insert \%.+.\%
#'
#' Call this function as an addin to insert \code{ \%.+.\% } at the cursor position.
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
# @seealso \code{\link[spMisc]{\%.+.\%}}

insertPaste_Addin <- function() {
    rstudioapi::insertText(text = " %.+.% ")
}

#' Insert \%if.NULL\%
#'
#' Call this function as an addin to insert \code{ \%if.NULL\% } at the cursor position.
#'
#' @note Operator does not work unless library which contains this operator is loaded.
#'
#' @export
#'
#' @family 'Insert at cursor position' addins
#' @seealso  About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
# @seealso Operator \code{\link[spMisc]{\%if.NULL\%}}
insertIfNULL_Addin <- function() {
    rstudioapi::insertText(text = " %if.NULL% ")
}


