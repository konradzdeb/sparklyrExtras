#' Get User Directory
#' 
#' Gets user directory
#' 
#' @param sc Spark Context
#' 
#' @return User directory path
#'
#' @import sparklyr
#' @examples 
#' \dontrun{
#' # sc <- sparklyr::spark_connect(master = "local")
#' spark_get_user_dir(sc)
#' }
#' @export
spark_get_user_dir <- function(sc) {
  sparklyr::invoke_static(sc, "dirsAndPaths.Main", "getDirectory")
}
