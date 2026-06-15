# NOTE: These are all the packages we'll use today
library(tidyverse)
library(scales)
library(sjPlot)
library(emmeans)
library(plotly)
library(xtable)

# NOTE: Here's a global way to define what we want
# our figures to look like
theme_set(
  theme_classic(base_size = 14, base_family = "Futura")
)

# NOTE: Load data (danish-1, english-1, rClauseData-3)

d <- read_csv("data/danish-1.csv")
e <- read_csv("data/english-1.csv")
rc <- read_csv("data/rClauseData-3.csv")


# NOTE: Part 1: Plotting individual variation when the data is continuous
# Here's one way to combine different dimensions of the data
# What are some potential problems here...?

# QUESTION: How can you show by-item variation in a figure?
# What changes will be necessary given the structure of the data?

# NOTE: Part 2: Visualizing models
# An easy way to do this is to use sjPlot and/or emmeans (multicomp)
# Suppose we want to run a model on rc


# NOTE: How about multiple comparisons...?

# Back in the day
aov(RT ~ Affix, data = d) |>
  TukeyHSD() |>
  plot()

# Now, we can use emmeans

# NOTE: Part 2.1: Model predictions

# Q: Plot individual variation for Ind and Adv only on top of existing fig.

# NOTE: Part 3: Extras
# plotly for interactive plots
# Quarto & Typst
