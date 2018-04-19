#' Restaurants data set
#'
#' This provides a record linkage data set with information about different restaurants.
#'
#' @format A data frame with 16 variables: \code{id}, \code{name}, \code{address}, \code{city}, \code{phone}, \code{type}, \code{class}
#' 
#' This data set includes 533 restaurants from the Fodors database and 331 records from the Zagat database. 
#' It is appropriate for performing various types of record linkage
#' and can be assessed by standard record linkage methods. 
#'
#'@examples
#'head(restaurant)
#'dim(restaurant)
#'
"restaurant"

#' Restaurants Gold
#'
#' This data set includes the matched record pairs based on ID.
#'
#' @format A data frame with 3 variables: \code{class}, \code{id1}, \code{id2}
#' 
#' This data set includes the matched record pairs based on ID from the Zagats and Fodors data sets.
#' This data set can be used to evaluate the performance of record linkage methods performed on the Zagats and Fodors data sets. 
#'
#'@examples
#'head(restaurant_gold)
#'dim(restaurant_gold)
#'
"restaurant_gold"
