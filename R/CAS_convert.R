#' CAS to InChiKey converter
#'
#' @param cas_number given CAS number
#' @return appropriate InChiKey value
#' @export
cas_to_inchikey <- function(cas_number) {
  result <- webchem::cts_convert(cas_number, from = "CAS", to = "InChIKey", match = "first", verbose = FALSE)
  return(result)
}

#' CAS to SMILES converter
#'
#' @param cas_number given CAS number
#' @return appropriate SMILES value
#' @export
cas_to_smiles <- function(cas_number) {
  result <- webchem::cir_query(cas_number, representation = 'smiles', resolver = 'cas_number')
  return(result)
}
