

#' Format as R Markdown rmd_headings
#'
#' @name rmd_headings
#' @export
rmd_heading_1 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n# ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_2 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n## ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_3 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n### ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_4 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n#### ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_5 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n##### ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_6 <- function() {
    row_ind <- rs_get_ind_first_selected_row()
    rs_insert_at_row_start(row_ind, "\n###### ")
}
#' @rdname rmd_headings
#' @export
rmd_heading_1_title <- function() {

    text <- repeat_symbol("=", 60)
    rs_enclose_first_row_with_lines("\n", below = text)
}
#' @rdname rmd_headings
#' @export
rmd_heading_2_subtitle <- function() {

    text <- repeat_symbol("-", 60)
    rs_enclose_first_row_with_lines("\n", below = text)
}
