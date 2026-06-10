#' Fix multiple reverse coded columns
#'
#' @param df Dataframe with responses where you have reverse coded items
#' @param rc_cols Specific columns you want reverse coded
#' @param max Highest score available to the respondents
#'
#' @returns Dataframe with reverse coded items corrected and replaced
#' @export
#'
#' @examples
#' fix_reverse_coding(number_data, c("q1", "q2"), 7)
fix_reverse_coding <- function(df, rc_cols, max){
  # store df
  newdf <- df
  # select just the columns that are reverse coded, then apply fix_cell
  # to each cell in those columns
  subdf <- sapply(df[,c(rc_cols)],fix_item,max=max)
  # replace the reverse coded columns in the newdf dataframe with the
  # corrected values
  for (col_name in rc_cols){
    print(col_name)
    # replace column in newdf with the corrected subdf column
    newdf[[col_name]] <- subdf[,col_name]
  }
  # output
  return(newdf)
}
