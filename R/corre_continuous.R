#' Continuous traits from the CoRRE Trait Data
#'
#' Based on the publication "CoRRE Trait Data: A dataset of 17 categorical and continuous traits for 4079 grassland species worldwide".
#' Raw continuous data was downloaded from the EDI Data Portal (https://doi.org/10.6073/pasta/a33c9be2bd819d6b1a2c52663d561158).
#'
#' @format A data frame with 2927 rows and 10 variables:
#' \describe{
#'   \item{family}{Unique plant identifier}
#'   \item{species}{Plant species}
#'   \item{LDMC}{Leaf Dry Matter Content: Leaf dry mass per leaf fresh mass \eqn{[g g^{-1}]}}
#'   \item{SLA}{Specific Leaf Area: Leaf area per leaf dry mass, including petiole \eqn{[mm^2 mg^{-1}]}}
#'   \item{SRL}{Specific Root Length (all root) \eqn{[cm g^-1]}}
#'   \item{leaf_N}{Leaf nitrogen content per leaf dry mass \eqn{[mg g^{-1}]}}
#'   \item{leaf_area}{Leaf area of leaf, including petiole \eqn{[mm^2]}}
#'   \item{leaf_dry_mass}{Dry mass of a single leaf \eqn{[mg]}}
#'   \item{plant_height_vegetative}{Height of vegetative growth \eqn{[m]}}
#'   \item{seed_dry_mass}{Seed dry mass \eqn{[mg]}}
#' }
#'
#' @source Komatsu, K.J., Avolio, M.L., Padullés Cubino, J. et al. CoRRE Trait Data: A dataset of 17 categorical and continuous traits for 4079 grassland species worldwide. Sci Data 11, 795 (2024). https://doi.org/10.1038/s41597-024-03637-x
"corre_continuous"