test_that("cas_to_inchikey obtains correct InChiKey", {
  expect_equal(cas_to_inchikey("7785-23-1")[[1]], "ADZWSOLPGZMUMY-UHFFFAOYSA-M")
  expect_true(is.na(cas_to_inchikey("12002-61-8")[[1]]))
  expect_true(is.na(cas_to_inchikey("is not a CAS number")[[1]]))
})

test_that("cas_to_smiles obtains correct SMILES", {
  expect_equal(cas_to_smiles("7785-23-1")[[1]], "[Br-].[Ag+]")
  expect_true(is.na(cas_to_smiles("12002-61-8")[[1]]))
  expect_true(is.na(cas_to_smiles("is not a CAS number")[[1]]))
})
