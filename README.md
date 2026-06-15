# The fundamentals of data visualization in R

3-day workshop at the CCP Spring Training in Experimental Psycholinguistics, University of Alberta, 2026.

This workshop focuses on data visualization using R and versatile packages such as `dplyr`, `ggplot2`, `plotly`, and others. Over three days, participants will learn to create clear, publication-ready visualizations tailored to linguistic and psycholinguistic data.

## Topics covered

- **Day 1** introduces the principles of effective visual communication, the structure of `ggplot2`, and essential `geoms` for visualizing experimental results.

- **Day 2** emphasizes data transformation using `dplyr`, customization using scales, grids, as well as the functional use of aesthetics to showcase group and condition effects.

- **Day 3** explores Quarto and specialized techniques for visualizing individual variation, statistical model estimates, and creating interactive plots to analyze complex experimental outcomes. We will also see how to combine data analysis and linguistic elements into a document using Typst via Quarto. **To run the final Quarto file, you have to have installed Fonology**: run this in your console `pak::pak("guilhermegarcia/Fonology")`. Also, note that `posit.cloud` uses an older version of Typst (as of June 2026), so you may not be able to render the `Qmd` file as is depending on when you're trying to do it. Simply avoid using the online editor (it was useful for our course, but it has its limitations), and favour instead your local installatino of R + your editor of choice.

Prior experience: basic knowledge of R and basic stats

Pre-reading: Garcia, G. D. (2021). *Data visualization and analysis in second language research*. New York, NY: Routledge. Chapters 3, 4, and 5.

## Getting started

### Option 1: Posit Cloud

Use this option if you are not familiar with Git.

1. Create an account at [posit.cloud](https://posit.cloud/).
2. Click on "New Project" > "New Project from Git Repository".
3. Paste this URL: `https://github.com/guilhermegarcia/STEP_2026.git`.
4. This will create a new project with all the files we'll use during the course.
5. Open the R console and install the course packages:

```r
install.packages("tidyverse")
```

### Updating the course files

To update your project files, click on the `Terminal` tab and run:

```sh
git fetch origin && git reset --hard origin/main
```

Warning: this resets the course files to match the GitHub repository. Any notes you added directly to course scripts may be deleted. Put your own notes in a separate folder, such as `my_files`. If you add notes to a course script and then reset the project, **your notes will disappear**.

### Option 2: Local Git setup

If you already use Git, clone the repository with:

```sh
git clone https://github.com/guilhermegarcia/STEP_2026.git
```

You can then use whichever editor or R environment you prefer.
