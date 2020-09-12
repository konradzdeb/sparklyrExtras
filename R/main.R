#' @import sparklyr
#' @export
sparklyrextras_hello <- function(sc) {
  sparklyr::invoke_static(sc, "sparklyrextras.Main", "hello")
}
