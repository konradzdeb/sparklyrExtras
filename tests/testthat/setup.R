# Check if spark is installed, will return 0 rows for Spark not available
has_spark <- nrow(sparklyr::spark_installed_versions()) != 0

if (has_spark) {
  sc <- sparklyr::spark_connect(master = "local")
}

# Run after all tests
withr::defer(expr = {
  if (has_spark) {
    sparklyr::spark_disconnect(sc)
  }
  rm(has_spark)
}, teardown_env())
