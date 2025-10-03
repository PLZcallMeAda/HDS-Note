# Case Study: Life Expectancy Data — Core Tasks (Prompts & Hints Only)
# Week 1 — R Programming
# ------------------------------------------------------------------
# This scaffold is designed to guide you through the core tasks.
# It contains prompts and hints ONLY. Replace TODOs with your own code.
# You may use Base R and/or ggplot2 as indicated.
# ------------------------------------------------------------------

# ==== 0) Setup -----------------------------------------------------

# [Hint] Ensure your working directory is set to this script's folder.
# Session > Set Working Directory > To Source File Location

# [Hint] Data file expected at: ./data/Life Expectancy Data.csv
# [TODO] Read the CSV into an object named `data`. Keep original column names.
#        (Tip: use check.names = FALSE to avoid dots in names.)
# data <- TODO

# [Optional] Load ggplot2 if you wish to use it.
# install.packages("ggplot2")  # run once if needed
# library(ggplot2)

# [Tip] Some columns have spaces. Use backticks, e.g. data$`Life expectancy`


# ==== 1) First look at the data -----------------------------------

# 1a) View a sample of the data
# [Prompt] Show the first few and last few rows.
# head(TODO)
# tail(TODO)

# [Prompt] Take a random sample of 10 rows (Base R).
# set.seed(1); TODO

# 1b) Dimensions
# [Prompt] How many rows and columns?
# dim(TODO); nrow(TODO); ncol(TODO)

# 1c) Structure and summaries
# [Prompt] Inspect types and basic summaries.
# str(TODO)
# summary(TODO)

# 1d) Duplicates (Optional) 
# [Prompt] Are there duplicate Country-Year combinations?
# dup_idx <- duplicated(TODO)  # e.g. data[c("Country","Year")]
# sum(TODO)
# TODO  # show the duplicate keys/rows


# ==== 2) Data hygiene & missingness -------------------------------

# 2a) Missing values per column
# [Prompt] Count NAs in each column.
# colSums(TODO)

# 2b) Percentage of missing per column
# [Prompt] Compute and sort descending.
# na_pct <- colMeans(is.na(TODO)) * 100
# TODO  # sort and view

# 2c) Overall missingness
# [Prompt] Percentage of all cells that are NA.
# TODO

# 2d) Simple imputation example (optional)
# [Prompt] If GDP exists, create GDP_imputed by replacing NAs with
#          the country mean GDP (Base R: ave + ifelse).
# if ("GDP" %in% names(data)) {
#   country_means <- ave(TODO, TODO, FUN = function(x) mean(x, na.rm = TRUE))
#   TODO
# }


# ==== 3) Distributions & basic EDA --------------------------------

# 3a) Histograms (Base R) for key variables
# [Prompt] Plot histograms for Life expectancy and BMI (if present).
# hist(TODO, breaks = 30, main = "Distribution of Life Expectancy", xlab = "Years")
# hist(TODO, breaks = 30, main = "Distribution of BMI", xlab = "BMI (kg/m^2)")

# 3a-alt) Histograms (ggplot2) if preferred (Optional) 
# ggplot(TODO, aes(x = `Life expectancy`)) + geom_histogram(bins = 30) + labs(...)
# ggplot(TODO, aes(x = BMI)) + geom_histogram(bins = 30) + labs(...)

# 3b) Boxplots by Status (Developed vs Developing)
# [Prompt] Compare Life expectancy by Status using a boxplot.
# boxplot(`Life expectancy` ~ Status, data = TODO, main = ..., xlab = ..., ylab = ...)

# 3b-alt) ggplot2 boxplot (Optional) 
# ggplot(TODO, aes(x = Status, y = `Life expectancy`)) + geom_boxplot() + labs(...)

# 3c) Group summaries (Optional) 
# [Prompt] Compute mean, sd of Life expectancy by Status; median GDP; mean Schooling.
# tapply(TODO, TODO, mean, na.rm = TRUE)
# tapply(TODO, TODO, sd, na.rm = TRUE)
# tapply(TODO, TODO, median, na.rm = TRUE)
# tapply(TODO, TODO, mean, na.rm = TRUE)


# ==== 4) Relationships & correlations (Optional)  -----------------------------

# 4a) Correlation matrix
# [Prompt] Create a numeric-only data frame and compute pairwise correlations.
# is_num <- sapply(TODO, is.numeric)
# num_data <- TODO
# cor_matrix <- cor(TODO, use = "pairwise.complete.obs")
# TODO  # view a rounded version

# 4b) Correlations with Life Expectancy for selected variables
# [Prompt] For vars like GDP, Schooling, BMI, HIV.AIDS, Adult Mortality (if present),
#          compute correlation with Life expectancy.
# vars <- c("GDP","Schooling","BMI","HIV.AIDS","Adult Mortality")
# vars <- vars[vars %in% names(data)]
# for (v in vars) {
#   TODO  # compute and print cor(data$`Life expectancy`, data[[v]], ...)
# }

# 4c) Scatterplots with trend
# [Prompt] GDP vs Life expectancy (Base R), add loess or lm line.
# plot(TODO, TODO, main = "GDP vs Life Expectancy", xlab = "GDP (US$)", ylab = "Life Expectancy (years)")
# lo_obj <- loess(TODO ~ TODO, data = data, na.action = na.exclude)
# xs <- seq(min(TODO, na.rm = TRUE), max(TODO, na.rm = TRUE), length.out = 200)
# lines(xs, predict(lo_obj, newdata = data.frame(GDP = xs)), lwd = 2)

# 4c-alt) ggplot2 with smoothing
# ggplot(TODO, aes(x = GDP, y = `Life expectancy`, colour = Status)) +
#   geom_point(alpha = 0.6) + geom_smooth(method = "loess", se = FALSE) + labs(...)

# 4d) Pairwise scatterplot matrix (Base R)
# [Prompt] Use pairs() on a small set of variables (e.g., Life expectancy, GDP, Schooling, BMI).
# pair_vars <- c("Life expectancy","GDP","Schooling","BMI")
# pair_vars <- pair_vars[pair_vars %in% names(data)]
# pairs(TODO, main = "Selected Variables: Pairwise Plots")


# ==== 5) Programming practice -------------------------------------

# 5a) Function
# [Prompt] Write a function that returns the mean life expectancy for a given country.
# mean_lifeexp <- function(df, country_name) {
#   TODO
# }
# [Prompt] Test your function with a country of your choice.
# TODO

# 5b) Loop
# [Prompt] For each year, print the top 3 countries by Life expectancy.
# years_vec <- sort(unique(TODO))
# for (yr in years_vec) {
#   TODO  # subset, order descending, print head(3)
# }

# 5c) Conditionals
# [Prompt] Create a new column lifeexp_flag: "Low" (<50), "High" (>80), "Typical" otherwise.
# le <- TODO
# data$lifeexp_flag <- ifelse(TODO, "Low", ifelse(TODO, "High", "Typical"))
# table(TODO, useNA = "ifany")


# ==== 6) Reporting-ready outputs ----------------------------------

# 6a) Summary tables by Status (Base R aggregate)
# [Prompt] Produce mean life expectancy, mean Schooling, mean GDP by Status.
# status_lifeexp_mean <- aggregate(TODO ~ TODO, data = data, FUN = function(x) mean(x, na.rm = TRUE))
# status_schooling_mean <- aggregate(TODO ~ TODO, data = data, FUN = function(x) mean(x, na.rm = TRUE))
# status_gdp_mean <- aggregate(TODO ~ TODO, data = data, FUN = function(x) mean(x, na.rm = TRUE))
# TODO  # view objects

# 6b) Save a plot to file (optional)
# [Prompt] Create a figures/ folder and save a GDP vs Life expectancy plot as PNG.
# if (!dir.exists("figures")) dir.create("figures")
# png(filename = "figures/gdp_lifeexp.png", width = 840, height = 600)
# TODO  # plot(...) and add line
# dev.off()

# 6c) Save a CSV of the Status summary (if created)
# if (exists("status_lifeexp_mean")) {
#   write.csv(TODO, row.names = FALSE)
# }

# ==== 7) Reflection prompts ---------------------------------------
# - Which indicators appear most strongly associated with Life Expectancy?
# - Do patterns differ between Developed and Developing countries?
# - How does handling missing data (e.g. imputation) affect results?
# - What are the limitations of simple correlations for causal interpretation?
# - If you had more time, what variables/transformations would you explore next?

# ==== END OF SCRIPT ===============================================
