## code to prepare `number_data` dataset goes here
set.seed(24601)

number_data <-  data.frame(
    participant = 1:250,
    q1 = sample(1:7, 250, replace = TRUE),
    q2 = sample(1:7, 250, replace = TRUE),
    q3 = sample(1:7, 250, replace = TRUE)
  )

usethis::use_data(number_data, overwrite = TRUE)
