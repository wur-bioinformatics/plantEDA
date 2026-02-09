# Define a function to read specific sheets from the excel file
read_excel_sheet <- function(i) readxl::read_excel('./data-raw/27329805/data.xlsx', sheet=i)

# Read the first four sheets from the excel file and join them together (rows are plant, columns are traits)
grassland_traits_environment <- 1:4 |> 
  purrr::map(read_excel_sheet) |> 
  purrr::reduce(cbind) |> 
  dplyr::mutate(dplyr::across(where(is.character), as.factor)) |>
  janitor::clean_names() |>
  as.data.frame()

usethis::use_data(grassland_traits_environment, overwrite = TRUE)
