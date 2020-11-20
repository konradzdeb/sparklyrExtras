#' @import sparklyr
#' @export
sparklyrextras_get_directory <- function(sc) {
  sparklyr::invoke_static(sc, "sparklyrextras.Main", "getDirectory")
}
