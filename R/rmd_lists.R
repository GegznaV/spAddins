insert_at_row_start <- function(row, text = NULL) {
    row <- row[1]
    location <- list(start = c(row, 1),
                     end   = c(row, 1))
    class(location) <- "document_range"

    rstudioapi::insertText(location = location, text = text)
}




#' R Markdown lists
#'
#' RStudio addins which convert text into R Markdown lists.
#' Fot the first-level lists: \itemize{
#'   \item \code{rmd_list()} - the main function, that make lists;
#'   \item \code{rmd_unordered_list()} - unordered list;
#'   \item \code{rmd_numbered_list()} - numbered list;
#'   \item \code{rmd_lettered_list()} - lettered list (non-capital English letters);
#'   \item \code{rmd_master_list()} - master list (whichnumbering continues
#'                                    throughout the document).
#'
#'   }
#'
#' @name rmd_list
#' @export
#' @family R Markdown formatting addins

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


    purrr::walk2(selected_rows, text, insert_at_row_start)

    # insert an empty line:  to display list correctly
    if (level == 1) {
        insert_at_row_start(selected_rows[1], "\n")
    }
}


#' @rdname rmd_list
#' @export
rmd_list_unordered <- function(variables) {
    rmd_list("unordered")
}

#' @rdname rmd_list
#' @export
rmd_list_numbered <- function(variables) {
    rmd_list("numbered")
}

#' @rdname rmd_list
#' @export
rmd_list_lettered <- function(variables) {
    rmd_list("lettered")
}

#' @rdname rmd_list
#' @export
rmd_master_list <- function(variables) {
    rmd_list("master")
}
