#' Fix a reverse coded item
#'
#' @param value A vector which you'd like reverse coded
#' @param max Highest score available to respondents
#'
#' @returns A vector of reversed values
#' @export
#'
#' @examples
#' fix_item(number_data$q1, 7)
fix_item <- function(value, max){
  return(max - value + 1)
}
