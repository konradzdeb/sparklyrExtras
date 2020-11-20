context("User directory")

test_that("Can get user directory", {
  skip_if_not(has_spark)
  obtained_user_dir <- spark_get_user_dir(sc)
  expect_length(obtained_user_dir, 1)
})
