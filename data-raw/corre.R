# Load continuous data csv and convert from long to wide format
corre_continuous <- read.csv('./data-raw/CoRRE_continuousTraitData_Apr2024.csv') |>
  dplyr::mutate(dplyr::across(where(is.character), as.factor)) |>
  tidyr::pivot_wider(names_from=trait, values_from = trait_value) |>
  as.data.frame()

# Load categorical data csv and convert from long to wide format
categorical_data <- read.csv('./data-raw/CoRRE_categoricalTraitData_Nov2023.csv') |>
  dplyr::mutate(dplyr::across(where(is.character), as.factor)) |>
  tidyr::pivot_wider(names_from=trait, values_from = trait_value) |>
  as.data.frame()

usethis::use_data(corre_continuous, overwrite = TRUE)
usethis::use_data(corre_categorical, overwrite = TRUE)
