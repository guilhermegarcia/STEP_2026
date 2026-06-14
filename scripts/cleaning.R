library(tidyverse)
library(janitor)

s <- read_csv2("data/survey_2026.csv")
s |> glimpse()
s |> names()

s <- s |>
  clean_names()

# Now, get rid of useless columns:
s |> names()

s <- s |>
  select(-matches("points|feedback|quiz|nom|adresse|heure"))


# NOTE: Rename columns that are too long:
s <- s |>
  rename(
    "singer" = 2,
    "exp_data" = 5,
    "exp_r" = 6,
    "exp_term" = 7,
    "difficulty" = 18,
    "ai" = 19,
    "agent" = 20,
    "workflow" = 21,
  )

# NOTE: Wide-to-long transformation
# to make our questions and responses
# become two columns: tidy data
# Tidy data: ONE row per observation,
# and ONE column per variable

long <- s |>
  pivot_longer(
    names_to = "question",
    values_to = "response",
    cols = 8:17
  )

long

# ANSWER: Here we add our key to grade
# responses

responses <- c(
  "x == \"hello\"",
  "mutate()",
  "select()",
  "filter()",
  "a numeric vector",
  "geom_point()",
  "the median",
  "means and standard errors",
  "the resulting data object is not tidy",
  "it specifies the mappings between variables and visual properties"
)

long |> glimpse()



# NOTE: Dichotomize answers?
