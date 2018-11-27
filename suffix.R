library(tidyverse)
words <- readLines("words.txt")
word_suffix <- str_sub(words, start= -3)
suffix_dat <- as_tibble(word_suffix) 
suffix_count <- suffix_dat %>%
	count(value)
suffix_15 <- top_n(suffix_count, 15)
write.table(suffix_15, "suffix.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)