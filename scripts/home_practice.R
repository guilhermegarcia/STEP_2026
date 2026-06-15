# NOTE: Practice script for days 1, 2, 3
# Load phonetique.RData using load()

# NOTE: PART 0 — Descriptive Summaries

# Q: What is the average number of hours of instruction across the two Conditions?

### 2. Group comparison
# Q: What is the mean gain score by L1? Sort from high to low gain.

### 3. Most effective condition
# Q: Which group shows the largest average improvement? Consider combining L1 and Condition.

### 4. Individual case
# Q: Who is the learner with the largest improvement? How about the smallest?

## NOTE: PART 1 — Geoms and Variable Relationships

### 5. Visualize gain by Condition
# Q: Create a boxplot showing gain scores across Conditions and L1. What patterns do you notice?

### 6. Visualize Age vs gain
# Q: Create a scatterplot showing Age on the x-axis and gain score on the y-axis. Fit a line to it.
# Does it look like there's an effect?

### 7. Add a third variable
# Q: Add `Condition` to the figure
# Does your answer to the previous question change?

### 8. Global vs local aesthetics
# Q: Create two versions of the previous plot:
# - one where color has a global scope
# - one with `aes(color = Condition)` applied only to one layer

## NOTE: PART 2 — Data Cleaning and Presentation

### 9. Recode Condition
# Q: Recode `Condition` to English labels (e.g., "phonétique" → "Phonetic-based", "traditionnelle" → "Traditional"). Use the recoded version in a new plot.

### 10. Long format
# Q: Transform the dataset to long format with columns: `Time` (Pre vs Post), `Score`. Plot Pre vs Post by Condition.

# Q: Create a new column for percent gain: `(Post - Pre) / Pre * 100`. Visualize it by `L1`.

## NOTE: PART 3 — Advanced Visualization and Modeling

### 12. Label best learners
# Q: Plot gain scores with `geom_col()` and use `geom_label()` to label learners with a gain above 20 points.
# You can get rid of the labels along the x axis since `geom_label()` will do the job.

### 13. Use plotly
# Q: Create an interactive version of the scatterplot from Question 6 using plotly.

### 14. Save plot
# Q: Save the plot from Question 5 as a JPEG file.
