#' CD Data Set
#'
#' This data set includes 9763 CDs randomly extracted from freeDB.
#'
#' @format A data frame with 11 variables: \code{pk}, \code{id}, \code{artist}, 
#' \code{title}, \code{category}, \code{genre}, \code{cdextra}, \code{year}, 
#' \code{track_number}, \code{song_name} 
#' 
#' This data set includes 9763 CDs randomly extracted from freeDB.
#' It is appropriate for performing various types of record linkage
#' and can be assessed by standard record linkage methods. 
#'
#'@examples
#'head(cd)
#'dim(cd)
#'
"cd"

#' CD Gold
#'
#' This data set includes the matched record pairs based on disc ID.
#'
#' @format A data frame with 2 variables: \code{disc1_id}, \code{disc2_id}
#' 
#' This data set includes the matched record pairs based on disc ID from the cd data set.
#' The data set can be used to evaluate the performance of record linkage methods performed on the cd data set. 
#'
#'@examples
#'head(cd_gold)
#'dim(cd_gold)
#'
"cd_gold"
