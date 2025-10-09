This assessment is worth 20% of your final grade for the whole unit and 20 marks are available.

本评估占该课程总成绩的 20%，总分值为 20 分。

It aims to test your understanding of univariable distributions, sampling distribution and hypothesis testing.

其目的是考察你对单变量分布、抽样分布及假设检验的理解程度。

**Your report should be a maximum of 10 pages (font size at least 11, standard margins), including any R code and references that you include.**

**你的报告篇幅最多不超过 10 页（字体不小于 11 号，使用标准页边距），包含你所使用的所有 R 代码及参考文献。**

· All solutions should be clearly set out with any hypotheses carefully set up and described.

・所有解决方案需清晰呈现，且所有假设均需仔细设定并详细说明。

· You are encouraged to provide your R code to document your work.

・建议你提供 R 代码以记录分析过程。

However, statistical outputs should be interpreted and described, with some demonstration of translating back to the problem domain.

但需对统计结果进行解读与描述，并体现出将结果与问题场景（即糖尿病筛查项目）关联的过程。

Relation to previous literature (etc) is not required.

无需关联过往文献等外部资料。

· The open-ended nature of the assignment means that it is possible to make some choices during the analysis – mark scheme will be flexible to reflect this.

・本作业具有开放性，意味着你在分析过程中可自主做出部分选择 —— 评分标准会为此提供灵活考量。

· Please present as you would a report by ensuring the submission has a structure and you are not just providing screenshots (or copy and paste) of code and results.

・请按照正式报告格式提交，确保内容结构完整，避免仅粘贴代码截图或直接复制代码与结果。

You are working for a local organisation that has undertaken a diabetes screening programme.

假设你任职于某地方机构，该机构开展了一项糖尿病筛查项目。

Individuals were invited to attend clinics undertaking the programme over a month period and you have been given the data collected for each individual visit.

在一个月的时间内，机构邀请民众前往诊所参与筛查，现向你提供每次就诊所收集的个人数据。

You are asked to produce a report summarising the data collected and to complete 2 tasks;

你需撰写一份报告总结所收集的数据，并完成以下两项任务：

1. Please provide a summary of the data, with the aid of graphs and tables (5 marks)
    
2. ==借助图表和表格，对数据进行概况总结（5 分）==


    
3. Another screening programme took place last year in a different region and they found 14% of individuals had diabetes and the average BMI and age of those attending clinics were 28kg/m² and 55 years, respectively.
    
4. ==去年在另一地区开展过一项筛查项目，结果显示 14% 的参与者患有糖尿病，参与诊所筛查人员的平均 BMI（体重指数）为 28 千克 / 平方米，平均年龄为 55 岁。==
    

==They also found a significant relationship between smoking and diabetes.==

==该项目还发现，吸烟与糖尿病之间存在显著关联。==

Investigate if your data support these results and provide possible explanations to your findings. (15 marks)

请分析你所掌握的数据是否支持上述结论，并为你的分析结果提供合理解释（15 分）。

You have been provided with a dataset (SHDS_Assessment1_data.csv) from the screening programme that contains baseline information of patients collected during the screening visit and each patient’s diabetes diagnosis.

你将获得该筛查项目的数据集（文件名为 SHDS_Assessment1_data.csv），其中包含筛查就诊时收集的患者基线信息，以及每位患者的糖尿病诊断结果。

**Dataset information**:

**数据集说明**：

The dataset contains the following variables, as described here.

数据集包含以下变量，具体说明如下：

|              |                                                                                                                                                                   |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Diabetes_012 | Weather the patient was diagnosed with diabetes (0 = no-diabetes, 1 = diabetes)患者是否被诊断出患有糖尿病（0=无糖尿病，1=有糖尿病）                                                       |
| HighChol     | Whether the patient has high cholesterol (0 = no, 1 = yes)患者是否有高胆固醇（0=否，1=是）                                                                                      |
| CholCheck    | Whether the patient had cholesterol checked (0 = no, 1 = yes)患者是否检查过胆固醇（0=否，1=是）                                                                                  |
| BMI          | Body mass index (kg/m2)体重指数（千克/平方米）                                                                                                                               |
| Smoker       | Whether the patient is a smoker (0 = non-smoker, 1 = smoker)患者是否为吸烟者（0=不吸烟者，1=吸烟者）                                                                                |
| Stroke       | Whether the patient has ever had a stroke (0 = no, 1 = yes)患者是否曾患中风（0=否，1=是）                                                                                      |
| Sex          | Sex of the patient, binary (0 = female, 1 = male)患者性别，二元（0 = 女性，1 = 男性）                                                                                           |
| Age          | Age of patient in years患者的年龄（以年为单位）                                                                                                                               |
| MentHlth     | Number of days in the past 30 days the patient says they have suffered with mental health (including stress, depression, etc)过去30天里，患者表示自己遭受心理健康问题（包括压力、抑郁等）困扰的天数 |

**Additional Hints:**

- Don’t forget to conduct an exploratory/descriptive analysis.

- Please showcase what you have learnt, but DO NOT simply perform every test you can. Carefully think about the assumptions and which tests are appropriate to perform when.

- When analysing the data, you should carefully think about any hypothesis and assumptions

- You should structure your report so that it is easy to follow what you have done, and the results of your analysis.

- Note: the dataset and scenario are entirely fictitious, and so you are not expected to provide background motivation/reading within your report, BUT you should consider the results from the fictitious scenarios presented.
额外提示：
- 不要忘记进行探索性/描述性分析。
- 请展示你所学到的内容，但不要简单地进行所有你能做的测试。仔细思考假设以及在何种情况下适合进行哪些测试。
- 在分析数据时，你应该仔细思考任何假设和前提。
- 你应该组织好报告的结构，以便清晰地呈现你所做的工作以及分析结果。
- 注意：该数据集和场景完全是虚构的，因此不要求你在报告中提供背景动机/相关文献，但你应该考虑所呈现的虚构场景的结果。

**Mark scheme information**:

Approximately half of the marks are allocated for correct and appropriate analysis, with the other half being allocated for clear descriptions and justifications of the analyses, their interpretation, discussion of the implications, and presentation. It is particularly important that you clearly explain what it is you are doing, your assumptions, and conclusions. Simply presenting code and output with no discussion and explanation is inadequate and will result in a fail.

The below table gives an indication of how the 50 marks available will be awarded:

|   |   |
|---|---|
|**Mark (% of the marks available for question 1)**|**Descriptor**|
|0-19%|Analysis makes little or no attempt to address the brief, is generally inaccurate and is hard to follow. Conclusions are either nonexistent or incorrect.|
|20-29%|Analysis addresses the brief in a limited way but is generally inaccurate. Report is generally incoherent. Conclusions often incorrect, and no attempt is made to discuss assumptions of analysis.|
|30-39%|Analysis addresses only parts of the brief and is often inaccurate. Report is generally incoherent. Conclusions often incorrect, and no attempt is made to discuss assumptions of analysis.|
|40-49%|A partly correct analysis that has addressed at least some of the brief. Report lacks coherence on the whole. Conclusions are sometimes incorrect, and little or no attempt is made to discuss assumptions of analyses.|
|50-59%|A mostly correct analysis that has addressed the brief. Report is coherent but may be hard to follow in places. Conclusions and interpretation generally correct but superficial. Some limited effort is made to discuss assumptions of the analysis.|
|60-69%|Analyses are correct besides minor errors and typos. Report is coherent throughout. Conclusions and interpretation are correct but lack depth. Reasonable discussion of assumptions and limitations of analysis.|
|70-79%|Analyses are correct, besides minor errors and typos, and address the brief in considerable detail. Conclusions and interpretation are correct and detailed. Comprehensive discussion of assumptions and limitations.|
|80-89%|Analyses are correct, address and often go beyond the brief, demonstrating independent thought and judgement. Conclusions and interpretation are correct and detailed. Comprehensive discussion of assumptions and limitations.|
|90-100%|Marks in this category reflect a report of publishable quality with advanced insights and going well beyond the brief. Reports may demonstrate novel and innovative approaches to address the brief, and interpretations and conclusions will demonstrate a deep understanding and judgement.|
# 《健康数据科学统计学 - 评估 1》任务总结

该评估占课程总成绩的 20%（共 20 分），核心考察单变量分布、抽样分布与假设检验的理解与应用，要求提交一份结构清晰的分析报告（含 R 代码），需围绕虚构的糖尿病筛查数据集完成两项核心任务，同时注重分析的合理性、结果解读的准确性及报告呈现的专业性。

## 一、评估核心信息

1. **报告要求**
    
    - 篇幅：最多 10 页，字体不小于 11 号，使用标准页边距；
    - 内容：需包含清晰的假设设定、R 代码（用于记录分析过程）、统计结果解读（需关联问题场景，无需关联文献）；
    - 呈现：避免仅粘贴代码 / 截图，需按报告结构组织（如引言、分析过程、结果、结论），体现逻辑性。
2. **数据集背景**
    
    数据来自某地区 1 个月内的糖尿病筛查项目，包含 9 个患者基线变量，关键变量如下：
1. |变量名|含义与取值|
    |---|---|
    |`Diabetes_012`|糖尿病诊断（0 = 无糖尿病，1 = 有糖尿病）|
    |`BMI`|体重指数（单位：kg/m²）|
    |`Smoker`|吸烟状态（0 = 不吸烟，1 = 吸烟）|
    |`Age`|患者年龄（单位：岁）|
    |其他变量|高胆固醇（`HighChol`）、胆固醇检查史（`CholCheck`）等|

## 二、两大核心任务

### 任务 1：数据概况总结（5 分）

- **目标**：通过图表（如直方图、箱线图、频数表等）和统计量（如均值、中位数、标准差、频数 / 频率），全面呈现数据集的基本特征；
- **关键点**：需覆盖核心变量（如糖尿病患病率、BMI 分布、年龄分布、吸烟比例等），确保描述清晰、图表选择合理（如用直方图展示 BMI 的分布形态，用频数表展示糖尿病患病比例）。

### 任务 2：与去年另一地区筛查结果的对比分析（15 分）

- **对比基准（去年另一地区结果）**：
    1. 糖尿病患病率 14%；
    2. 平均 BMI 为 28 kg/m²，平均年龄为 55 岁；
    3. 吸烟与糖尿病存在显著关联。
- **核心任务**：验证本次筛查数据是否支持上述 3 个结论，需：
    1. 针对 “患病率”“平均 BMI”“平均年龄”，通过假设检验（如单样本比例检验、单样本 t 检验）判断本次数据与去年结果是否存在显著差异；
    2. 针对 “吸烟与糖尿病的关联”，通过合适的统计方法（如卡方检验、逻辑回归）分析两者是否存在显著关系；
    3. 对分析结果进行解释（如 “若本次患病率显著低于 14%，可能原因包括地区人群差异、筛查标准不同等”），同时讨论分析假设（如正态性、独立性）与局限性。

## 三、关键分析提示与要求

1. **分析原则**
    
    - 先做探索性分析（如检查数据缺失值、异常值，判断变量分布形态），再开展推断统计（如假设检验）；
    - 避免 “盲目做所有检验”，需根据变量类型（如分类变量用卡方检验，连续变量用 t 检验）和分析目标选择合适方法，同时验证方法的前提假设（如 t 检验需验证数据是否近似正态分布）。
2. **假设检验核心步骤**
    
    需明确每一步的逻辑，包括：
    
    - 设定原假设（H₀）与备择假设（H₁）（如 “H₀：本次糖尿病患病率 = 14%；H₁：本次糖尿病患病率≠14%”）；
    - 选择检验方法并说明理由（如 “因患病率是二分类变量比例，选择单样本比例 z 检验”）；
    - 报告检验统计量（如 z 值、t 值、p 值），并基于 p 值判断是否拒绝原假设；
    - 解读结果（如 “p<0.05，拒绝 H₀，说明本次糖尿病患病率与 14% 存在显著差异”），并关联实际场景（如 “可能因本次筛查人群更年轻，导致患病率更低”）。

## 四、评分标准核心维度（共 20 分，对应任务 1-5 分、任务 2-15 分）

评分按 “分析准确性” 与 “报告呈现 / 解读” 各占约 50% 分配，核心等级描述如下（以单题为例）：

|得分区间|核心判断标准|
|---|---|
|0-19%|未按要求完成任务，分析错误多，报告无逻辑，无结论或结论错误|
|40-49%|完成部分任务，分析部分正确，报告缺乏连贯性，结论偶有错误，未讨论假设|
|60-69%|分析基本正确（仅 minor 错误），报告连贯，结论正确但深度不足，合理讨论假设与局限性|
|80-100%|分析完全正确（超出基本要求，体现独立思考），结论详细准确，假设与局限性讨论全面，报告达可发表水平|

- 关键扣分项：仅粘贴代码 / 截图无解读、假设检验步骤缺失（如未设定假设）、方法选择错误（如用 t 检验分析分类变量关联）、结论与结果矛盾。

## 五、总结：报告撰写核心框架建议

1. **引言**：简要说明任务背景（糖尿病筛查数据）与报告目的（总结数据概况、对比去年结果）；
2. **数据描述（任务 1）**：分变量呈现探索性分析结果（如 “糖尿病患病率：本次筛查共 XX 人，其中 XX 人患病，患病率 XX%，见下表 1；BMI 呈正态分布，均值 XX，标准差 XX，见下图 1”）；
3. **对比分析（任务 2）**：按 “患病率对比→BMI / 年龄对比→吸烟与糖尿病关联” 分小节，每小节含 “假设设定→检验方法→结果→解读”；
4. **结论与局限性**：总结核心发现（如 “本次数据支持吸烟与糖尿病显著关联，但患病率低于去年 14%”），讨论分析局限性（如数据为横截面数据，无法推断因果；可能存在抽样偏差）；
5. **附录**：完整 R 代码（需注释关键步骤，确保可复现）。

要不要我帮你整理一份**任务 2 假设检验的 R 代码模板**？包含单样本比例检验（患病率对比）、单样本 t 检验（BMI / 年龄对比）、卡方检验（吸烟与糖尿病关联）的基础代码框架，可直接适配数据集使用。