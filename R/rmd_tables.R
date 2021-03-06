# Tables ---------------------------------------------------------------------

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name rmd_tables
#' @title Insert R Markdown tables
#' @description Insert examples of R Markdown tables.
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_1 <- function() {
    rs_enclose_first_row_with_lines(above = tbl_1)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_2 <- function() {
    rs_enclose_first_row_with_lines(above = tbl_2)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_3 <- function() {
    rs_enclose_first_row_with_lines(above = tbl_3)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_4 <- function() {
    rs_enclose_first_row_with_lines(above = tbl_3)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname rmd_tables
rmd_table_5 <- function() {
    rs_enclose_first_row_with_lines(above = tbl_3)
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_1 <- c(
"

: The name of the simple table.

Left-aligned      Centered column       Right-aligned
--------------  -------------------  ----------------
Row_1_Col_1        Row_1_Col_2          Row_1_Col_3

Row_2_Col_1        Row_2_Col_2          Row_2_Col_3

Row_3_Col_1        Row_3_Col_2          Row_3_Col_3

")
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_2 <- c(
"

: The name of the table without column names.

--------------  -----------------  ----------------
Row_1_Col_1        Row_1_Col_2          Row_1_Col_3

Row_2_Col_1        Row_2_Col_2          Row_2_Col_3

Row_3_Col_1        Row_3_Col_2          Row_3_Col_3
--------------  -----------------  ----------------

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_3 <- c(
"

: The name of the multi-row table.

-----------------------------------------------------
Left-aligned      Centered column      Right-aligned
---------------- -----------------  ----------------
Row_1_Col_1        Row_1_Col_2         Row_1_Col_3

Row_2_Col_1        Row_2_Col_2         Row_2_Col_3

Row_3_Col_1        Row_3_Col_2         Row_3_Col_3
-----------------------------------------------------

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_4 <- c(
"

: The name of the markdown-style table.

| Auto-aligned  | Left-aligned  |   Centered    | Right-aligned |
| ------------- | :------------ | :-----------: | ------------: |
|  Row_1_Col_1  |  Row_1_Col_2  |  Row_1_Col_3  |  Row_1_Col_4  |
|  Row_2_Col_1  |  Row_2_Col_2  |  Row_2_Col_3  |  Row_2_Col_4  |
|  Row_3_Col_1  |  Row_3_Col_2  |  Row_3_Col_3  |  Row_3_Col_4  |

")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
tbl_5 <- c(
"

:  The name of the grid-style table.

+---------------+---------------+--------------------+
| Right-aligned |  Centered     |  Auto-aligned      |
+==============:+:=============:+====================+
| Row_1_Col_1   | Row_1_Col_2   | - Row_1_Col_3a     |
|               |               | - Row_1_Col_3b     |
+---------------+---------------+--------------------+
| Row_2_Col_1   | Row_2_Col_2   | - Row_2_Col_3a     |
|               |               | - Row_2_Col_3b     |
+---------------+---------------+--------------------+

")
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
