#' Annotates data by InChiKey and SMILES based on CAS numbers
#'
#' @param csv_filename source CSV file containing CAS numbers
#' @param cas_column identification of column with CAS numbers
#' @return table extended by InChiKey and SMILES values
#' @export
annotate_cas_csv <- function(csv_filename, cas_column) {
  cas_numbers <- read.csv(file = csv_filename)
  cas_numbers$inchikey <- cas_to_inchikey(cas_numbers[[cas_column]])
  cas_numbers$smiles <- cas_to_smiles(cas_numbers[[cas_column]])
  return(cas_numbers)
}
