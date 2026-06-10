#' Sample text dataset
#'
#' A dataset containing 979 obs. of text entries with corresponding respondants and entry numbers.
#' This particular data has to do with what respondents believe are common stereotypes for latine women.
#' Respondents could enter up to 10 responses.
#'
#' @format A data frame with 979 rows and 3 columns:
#' \describe{
#'   \item{response}{Num. The respondent number.}
#'   \item{entry}{Num. Entry number from that respondent.}
#'   \item{text}{Chr. What the respondent typed in as a stereotype}
#'   }
#'
#' @examples
#' head(word_data)
#'
#' # Use with sentiment_shortcut()
#' sentiment_shortcut(word_data, text, response)
