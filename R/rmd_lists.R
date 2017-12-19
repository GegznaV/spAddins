#' Format text as R Markdown list
#'
#' RStudio add-ins which convert text into R Markdown lists.
#' For the first-level lists: \itemize{
#'   \item \code{rmd_list()} - the main function, that make lists;
#'   \item \code{rmd_unordered_list()} - unordered list;
#'   \item \code{rmd_numbered_list()} - numbered list;
#'   \item \code{rmd_lettered_list()} - lettered list (non-capital English letters);
#'   \item \code{rmd_master_list()} - master list (which numbering continues throughout the document).
#'   }
#'
#' @param type (character) the type of list "unordered", "numbered", "lettered",  "LETTERED", "master".
#'
#' @param level (integer) the level of list.
#'
#' @export
#' @family R Markdown formatting add-ins

rmd_list <- function(type = "unordered", level = 1) {
    obj <- rstudioapi::getSourceEditorContext()
    sel <- obj$selection[[1]]
    selected_rows <- sel$range$start[1]:sel$range$end[1]

    ind <- seq_along(selected_rows)

    # Identitation for level of list
    lev <- rep("\t", level - 1)


    text <- switch(type,
                   "1" = ,
                   "ordered" = ,
                   "numbered" = ,
                   "numbers" = paste0(lev, ind,          ". "),

                   "a" = ,
                   "lettered" = ,
                   "letters" = paste0(lev, letters[ind], ". "),

                   "A" = ,
                   "LETTERED" = ,
                   "LETTERS" = paste0(lev, LETTERS[ind], ". "),

                   "+" = ,
                   "unordered" = paste0(lev, rep("+", max(ind)), " "),

                   "-" = paste0(lev, rep("-", max(ind)), " "),
                   "*" = paste0(lev, rep("*", max(ind)), " "),

                   "(@)" = ,
                   "@" = ,
                   "master" = paste0(rep("(@)", max(ind)), " ")
    )


    purrr::walk2(selected_rows, text, rs_insert_at_row_start)

    # insert an empty line:  to display list correctly
    if (level == 1) {
        rs_insert_at_row_start(selected_rows[1], "\n")
    }
}


#' @rdname rmd_list
#' @export
rmd_list_unordered <- function() {
    rmd_list("-", level = 1)
}

#' @rdname rmd_list
#' @export
rmd_list_unordered_2 <- function() {
    rmd_list("+", level = 2)
}

#' @rdname rmd_list
#' @export
rmd_list_numbered <- function() {
    rmd_list("numbered", level = 1)
}

#' @rdname rmd_list
#' @export
rmd_list_numbered_2 <- function() {
    rmd_list("numbered", level = 2)
}

#' @rdname rmd_list
#' @export
rmd_list_lettered <- function() {
    rmd_list("lettered", level = 1)
}

#' @rdname rmd_list
#' @export
rmd_list_lettered_2 <- function() {
    rmd_list("lettered", level = 2)
}

#' @rdname rmd_list
#' @export
rmd_master_list <- function() {
    rmd_list("master")
}
