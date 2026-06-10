#' Create a sentiment analysis dataframe and quick plot
#'
#' @param df Dataframe with columns for grouping and the word data
#' @param word_column_name Name of column with word responses
#' @param grouping Grouping column you want to sort responses by
#'
#' @returns Dataframe with tokenized responses attached to a sentiment
#'          value based on afinn dictionary and a plot using smiley
#'          face evaluations of sentiment
#' @export
#'
#' @examples
#' sentiment_shortcut(word_data, text, response)
sentiment_shortcut <- function(df, word_column_name, grouping){
  #require tidytext
  if (!requireNamespace("tidytext", quietly = TRUE)) {
    stop("Package 'tidytext' is required. Install it with install.packages('tidytext').")
  }

  #require ggChernoff
  if (!requireNamespace("ggChernoff", quietly = TRUE)) {
    stop("Package 'ggChernoff' is required. Install it with install.packages('ggChernoff').")
  }

  #create and store a tokenized df
  df_tokenized <- df %>%
    unnest_tokens(word, {{word_column_name}})

  #antijoin stop words to tokenized df
  stop_words_antijoin <- df_tokenized %>%
    anti_join(stop_words, by = "word")

  #get value based sentiments from afinn
  get_sentiments("afinn")

  #make a dataframe with the sentiments
  dataframe <- stop_words_antijoin %>%
    inner_join(get_sentiments("afinn"), by = "word")

  #put together a plot of the valance by the grouping using ggChernoff
  plot <- dataframe %>%
    group_by({{grouping}}) %>%
    ggplot(aes(y = value, x = {{grouping}}, smile = value, fill = value))+
    geom_chernoff()+
    geom_line() +
    scale_smile_continuous()

  out_list <- list(dataframe, plot)

  return(out_list)
}
