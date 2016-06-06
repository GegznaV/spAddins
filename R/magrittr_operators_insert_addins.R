
# From `magrittr` ---------------------------------------------------------

#' Insert \%>\%
#'
#' Call this function as an addin to insert \code{ \%>\% } at the cursor position.
#'
#' @export
#' @note Operator does not work unless library \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso Pipeline operator \link[magrittr]{\%>\%}.\cr
#'   About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#' @family 'Insert at cursor position' addins
insertPipeline_Addin <- function() {
    rstudioapi::insertText(text = " %>% ")
}


#' Insert \%$\%
#'
#' Call this function as an addin to insert \code{ \%$\% } at the cursor position.
#'
#' @export
#' @note Operator does not work unless library \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso Exposition pipe operator \link[magrittr]{\%$\%},
#'  operator \link[base]{$}.\cr
#'   About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#' @family 'Insert at cursor position' addins
insertExPipe_Addin <- function() {
    rstudioapi::insertText(text = " %$% ")
}

#' Insert \%<>\%
#'
#' Call this function as an addin to insert \code{ \%<>\% } at the cursor position.
#'
#' @export
#' @note Operator does not work unless library \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso Compound assignment pipe operator \link[magrittr]{\%<>\%}\cr
#'   About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#' @family 'Insert at cursor position' addins
insertCompAssignPipe_Addin <- function() {
    rstudioapi::insertText(text = " %<>% ")
}

#' Insert \%T>\%
#'
#' Call this function as an addin to insert \code{ \%T>\% } at the cursor position.
#'
#' @export
#' @note Operator does not work unless library \pkg{magrittr} or
#' equivalent is loaded.
#' @seealso Tee operator \link[magrittr]{\%T>\%}\cr
#'   About shortcut keys: \href{https://rstudio.github.io/rstudioaddins/#keyboard-shorcuts}{keyboard shortcuts}.
#'
#' @examples
#'
#' # To call the functions with keyboard shortcuts explore link "spAddins"
#' # in section "See also".
#' @family 'Insert at cursor position' addins
insertTeeOperator_Addin <- function() {
    rstudioapi::insertText(text = " %T>% ")
}
