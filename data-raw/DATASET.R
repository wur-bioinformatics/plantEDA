## code to prepare `corre_continuous` and `corre_categorical` dataset goes here

continuous_data <- read.csv('./data-raw/CoRRE_continuousTraitData_Apr2024.csv')
continuous_data <- continuous_data[c('family', 'species', 'trait', 'trait_value')]
corre_continuous <- tidyr::pivot_wider(continuous_data, names_from=trait, values_from = trait_value)

categorical_data <- read.csv('./data-raw/CoRRE_categoricalTraitData_Nov2023.csv')
categorical_data <- categorical_data[c('family', 'species', 'trait', 'trait_value')]
corre_categorical <- tidyr::pivot_wider(categorical_data, names_from=trait, values_from = trait_value)

usethis::use_data(corre_continuous, overwrite = TRUE)
usethis::use_data(corre_categorical, overwrite = TRUE)
