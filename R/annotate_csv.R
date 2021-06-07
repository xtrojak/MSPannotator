#' Annotates data by InChiKey and SMILES based on CAS numbers
#'
#' @param input_csv source CSV file containing CAS numbers
#' @param output_csv enriched output CSV file
#' @param cas_column identification of column with CAS numbers
#' @export
annotate_cas_csv <- function(input_csv, output_csv, cas_column) {
  cas_numbers <- read.csv(file = input_csv)
  cas_numbers$inchikey <- cas_to_inchikey(cas_numbers[[cas_column]])
  cas_numbers$smiles <- cas_to_smiles(cas_numbers[[cas_column]])
  cas_numbers <- apply(cas_numbers, 2, as.character)
  write.csv(cas_numbers, output_csv)
}
