lotr_dat <- read_tsv("./session-03-automation/lotr_project/data/processed/lotr_clean.tsv")

summary_table <- lotr_dat %>%
  group_by(Species, Film) %>%
  summarize(
    Characters = n(),
    Words = sum(Words),
    .groups = "drop"
  )


write_tsv(table_words_df, "./session-03-automation/lotr_project/outputs/tables/words_table.R")

print("Table saved.")