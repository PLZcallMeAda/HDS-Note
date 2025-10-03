# HDS 作业分析：案例研究 —— 预期寿命数据（核心任务）

This handout guides you through the case study tasks. It contains prompts and hints only. Use your R script to complete the tasks.

本讲义将引导你完成案例研究任务，仅包含提示和线索，请使用 R 脚本完成这些任务。

## 0）环境设置（Setup）

- Ensure your working directory is set to this script's folder.
    
    确保工作目录已设置为该脚本所在的文件夹。
- Data file expected at: ./data/Life Expectancy Data.csv
    
    数据文件应位于以下路径：./data/Life Expectancy Data.csv
- Read the CSV into an object named data. (Hint: use check.names = FALSE to keep original column names)
    
    将 CSV 文件读入名为 data 的对象中（提示：使用 check.names = FALSE 参数保留原始列名）。
- Optional: load ggplot2 if you wish to use it.
    
    可选操作：若需使用 ggplot2，可加载该包。

## 1）数据初览（First look at the data）

- View the first few and last few rows (head(), tail()).
    
    查看数据的前几行和后几行（使用 head () 函数和 tail () 函数）。
- Take a random sample of 10 rows (hint: sample.int()).
    
    随机抽取 10 行数据（提示：使用 sample.int () 函数）。
- Check how many rows and columns (dim(), nrow(), ncol()).
    
    查看数据的行数和列数（使用 dim () 函数、nrow () 函数、ncol () 函数）。
- Inspect data types and summaries (str(), summary()).
    
    检查数据类型和数据摘要（使用 str () 函数、summary () 函数）。
- Check for duplicate Country-Year combinations.
    
    检查是否存在 “国家 - 年份” 组合的重复数据。

## 2）数据清洗与缺失值处理（Data hygiene & missingness）

- Count NAs per column (colSums(is.na(...))).
    
    统计每列的缺失值（NA）数量（使用 colSums (is.na (...))）。
- Compute percentage of missing values per column (colMeans(is.na(...))*100).
    
    计算每列缺失值的占比（使用 colMeans (is.na (...))*100）。
- Calculate overall missingness (mean(is.na(...))).
    
    计算数据整体的缺失率（使用 mean (is.na (...))）。
- Optional: Impute missing GDP values with country mean (hint: ave(), ifelse()).
    
    可选操作：用各国的 GDP 均值填补 GDP 列的缺失值（提示：使用 ave () 函数和 ifelse () 函数）。

## 3）分布与基础探索性数据分析（Distributions & basic EDA）

- Plot histograms for Life expectancy and BMI (Base R hist() or ggplot2 geom_histogram()).
    
    绘制 “预期寿命” 和 “BMI（身体质量指数）” 的直方图（使用 R 基础绘图的 hist () 函数或 ggplot2 包的 geom_histogram () 函数）。
- Boxplot: Life expectancy by Status (boxplot() or ggplot2 geom_boxplot()).
    
    按 “发展状态（Status）” 分组，绘制 “预期寿命” 的箱线图（使用 boxplot () 函数或 ggplot2 包的 geom_boxplot () 函数）。
- Group summaries: mean and sd of Life expectancy by Status; median GDP; mean Schooling (tapply()).
    
    分组计算摘要统计量：按 “发展状态” 分组计算 “预期寿命” 的均值和标准差、计算 “GDP” 的中位数、计算 “学校教育年限（Schooling）” 的均值（使用 tapply () 函数）。

## 4）关系与相关性分析（Relationships & correlations）

- Create a numeric-only data frame and compute correlation matrix (cor()).
    
    创建仅包含数值型变量的数据框，并计算相关矩阵（使用 cor () 函数）。
- Compute correlations between Life expectancy and selected variables (GDP, Schooling, BMI, HIV.AIDS, Adult Mortality).
    
    计算 “预期寿命” 与选定变量（GDP、学校教育年限、BMI、艾滋病（HIV.AIDS）、成人死亡率（Adult Mortality））之间的相关系数。
- Scatterplots: GDP vs Life expectancy, add trend line (Base R loess/lm or ggplot2 geom_smooth()).
    
    绘制 “GDP” 与 “预期寿命” 的散点图，并添加趋势线（使用 R 基础绘图的 loess/lm 函数或 ggplot2 包的 geom_smooth () 函数）。
- Produce pairwise scatterplot matrix for selected variables (pairs()).
    
    为选定变量生成两两配对的散点图矩阵（使用 pairs () 函数）。

## 5）编程实践（Programming practice）

- Write a function that returns mean Life expectancy for a given country.
    
    编写一个函数，该函数可返回指定国家的 “预期寿命” 均值。
- Loop: for each year, print the top 3 countries by Life expectancy.
    
    使用循环：针对每一年，打印出 “预期寿命” 排名前三的国家。
- Conditionals: create a new column lifeexp_flag (Low <50, High >80, Typical otherwise).
    
    使用条件判断：创建新列 lifeexp_flag，规则为 “预期寿命 < 50 标记为 Low，>80 标记为 High，其余标记为 Typical”。

## 6）可用于报告的输出结果（Reporting-ready outputs）

- Use aggregate() to produce summary tables by Status: mean Life expectancy, Schooling, GDP.
    
    使用 aggregate () 函数按 “发展状态（Status）” 分组，生成包含 “预期寿命均值”“学校教育年限均值”“GDP 均值” 的汇总表。
- Optional: Save a GDP vs Life expectancy plot to a file (hint: png(), plot(), lines(), dev.off()).
    
    可选操作：将 “GDP 与预期寿命” 的图表保存到文件中（提示：使用 png () 函数、plot () 函数、lines () 函数、dev.off () 函数）。

## 7）反思问题（Reflection prompts）

- Which indicators appear most strongly associated with Life Expectancy?
    
    哪些指标与预期寿命的关联度最高？
- Do patterns differ between Developed and Developing countries?
    
    发达国家和发展中国家的数据模式是否存在差异？
- How does handling missing data (e.g. imputation) affect results?
    
    缺失值处理方式（如填补）会对结果产生怎样的影响？
- What are the limitations of simple correlations for causal interpretation?
    
    仅使用简单相关系数进行因果推断存在哪些局限性？
- If you had more time, what variables/transformations would you explore next?
    
    若有更多时间，你接下来会探索哪些变量或进行哪些数据转换？

要不要我帮你整理一份包含**R 脚本关键函数用法注释**的文档？这样你在实际操作时能更快速地对应任务找到所需函数的使用方法。

编辑分享

提供一些关于如何在R中设置工作目录的指导