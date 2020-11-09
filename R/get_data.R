#' A simple function which can access the RDS file
#' @return The data
#' @export
get_rds = function(){
  file_path = system.file("extdata", "example_data.RDS", package = "dataExample")
  data = readRDS(file_path)
  return(data)
}

#' A simple function which can access the CSV file
#' @importFrom readr read_csv
#' @return The data
#' @export
get_csv = function(){
  file_path = system.file("extdata", "cars.csv", package = "dataExample")
  data = read_csv(file_path)
  return(data)
}

#' A simple function which can access the RData file
#' @return The data
#' @export
get_rdata = function(){
  diamonds = dataExample::diamonds
  return(diamonds)
}

