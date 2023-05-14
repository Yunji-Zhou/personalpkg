
test_that("log-sum-exp is finite", {
  expect_true( is.finite( log_summed_exps(x = 1:2000) ) )
})
