# Student Performance Analytics

## Project Overview

This Data Analyst portfolio project analyzes student exam performance data to identify factors associated with academic outcomes. The project uses PostgreSQL for database storage and SQL analysis, and Python with pandas and matplotlib for data exploration and visualization.

The analysis focuses on variables such as gender, race/ethnicity, parental level of education, lunch type, test preparation course, and exam scores in math, reading, and writing.

## Objective

The objective of this project is to answer the following questions:

- Which subject had the highest and lowest average score?
- Did students who completed test preparation perform better?
- How does lunch type relate to average student performance?
- Does parental level of education show differences in student outcomes?
- How are students distributed across high, average, and low performance groups?

## Tools Used

- PostgreSQL
- SQL
- Python
- pandas
- matplotlib
- Jupyter Notebook
- GitHub

## Dataset

The dataset contains 1,000 student records with the following fields:

- Gender
- Race/ethnicity
- Parental level of education
- Lunch type
- Test preparation course
- Math score
- Reading score
- Writing score

Additional calculated fields were created during analysis:

- Total score
- Average score
- Performance level

## Project Structure

```text
student-performance-analytics/
│
├── data/
│   ├── raw/
│   │   └── students_performance.csv
│   └── cleaned/
│
├── notebooks/
│   └── student_performance_analysis.ipynb
│
├── sql/
│   ├── create_table.sql
│   └── analysis_queries.sql
│
├── images/
│
├── reports/
│   └── final_insights.md
│
├── README.md
└── requirements.txt