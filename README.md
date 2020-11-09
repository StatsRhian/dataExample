# exampleData
Example  showing different ways to store data in an R package

## R data files
* Have extension `.RData` or `.rda`
* Can store multiple R objects
* Object name is defined when the object is created using `save()`
* Stored in the `data/` folder of the package
* Must be documented. This is done in an R script in the `R/` folder. See `R/data.R` for an example
* Automatically exported (e.g. don't type @export) in the documentation
* Users can access with `data(diamonds, package = "exampleData")`
* Access in functions etc within the package using `dataExample::diamonds`

## Other data files
* Can be `.RDS`, `.csv` or other
* RDS files can only store one R object
* Name of object is specified when the object is read in with `readRDS()`
* Stored in `inst/extdata`
* Isn't documented
* Accessed via users and functions with the `system.file()` function. This function only creates the file path. Then have to use appropriate function to read in. E.g. `read_csv(system.file("extdata", "mtcars", package = "dataExample")` or `readRDS(system.file("extdata", "example_data", package = "dataExample")`
