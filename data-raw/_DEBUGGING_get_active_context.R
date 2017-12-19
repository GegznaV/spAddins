
getActiveDocumentContext <- function() {

  context <- callFun("getActiveDocumentContext")
  context$selection <- as.document_selection(context$selection)
  structure(context, class = "document_context")
}

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fname <- "getActiveDocumentContext"


callFun <- function(fname, ...) {
  verifyAvailable()
  if (usingTools()) {
    found <- exists(
      rstudioapi:::toolsName(fname), envir = rstudioapi:::toolsEnv(),
      mode = "function"
    )
  } else {
    found <- exists(
      fname, envir = asNamespace("rstudio"),
      mode = "function"
    )
  }
  if (!found) {
    stop("Function ", fname, " not found in RStudio", call. = FALSE)
  }
  f <- findFun(fname, mode = "function")
  f(...)
}
