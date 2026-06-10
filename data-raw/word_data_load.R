word_data <- readr::read_csv("word_data")

colnames(word_data)[colnames(word_data) == 'cue'] <- 'text'

word_data <- word_data %>%
  select(-"X")

usethis::use_data(word_data, overwrite = TRUE)
