
#' A function to read list all available files for DyMEP
#'
#' @param crop_abbrev abbreviation for the  crop as defined in DyMEP package
#' @keywords internal
#' @export
list_all_pmems_for_crop <- function(crop_abbrev){
  
  return(list.files(system.file("extdata","pmem",
                         crop_abbrev, package = "DyMEPparameter")))
}


#' A function to read DRC parameters files for DyMEP
#'
#' @param crop_abbrev abbreviation for the  crop as defined in DyMEP package
#' @param file_name_best name of .rds DRC  for DyMEP package
#' @keywords internal
#' @export
RDS_reader_pbCR <- function(crop_abbrev, file_name_best){
  best_curve <- readRDS(system.file("extdata","pbRC",crop_abbrev,
                                  file_name_best, package = "DyMEPparameter"))
  return(best_curve)
  
}


#' A function to read model files for DyMEP
#'
#' @param crop_abbrev abbreviation for the  crop as defined in DyMEP package
#' @param model_name name of .rds model for DyMEP package
#' @keywords internal
#' @export
RDS_reader_pmem <- function(crop_abbrev, model_name){
  model <- readRDS(system.file("extdata","pmem",crop_abbrev,
                               model_name, package = "DyMEPparameter"))
  return(model)
  
}