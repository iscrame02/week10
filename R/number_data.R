#' Number Data
#'
#' A dataset containing 250 example responses to a 1-7 likert scale
#'
#' @format A data frame with 250 rows and 4 columns:
#' \describe{
#'   \item{participant}{Numeric. The participant number.}
#'   \item{q1}{Numeric. Randomly generated response 1-7.}
#'   \item{q2}{Numeric. Randomly generated response 1-7.}
#'   \item{q3}{Numeric. Randomly generated response 1-7.). NA for Spell cards.}
#'   }
#'
#' @examples
#' head(number_data)
#'
#' # Use with fix_item()
#' fix_item(number_data$q1, 7)
#'
#' # Use with fix_reverse_coding()
#' fix_reverse_coding(number_data, c("q1", "q2"), 7)
