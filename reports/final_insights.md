# Student Performance Analytics Report

## 1. Project Title

**Student Performance Analytics: Identifying Factors Affecting Exam Scores**

## 2. Project Overview

This project analyzes student exam performance data to identify factors that are associated with academic outcomes. The dataset contains student information such as gender, race/ethnicity, parental level of education, lunch type, test preparation course status, and scores in math, reading, and writing.

The goal of this project is to apply a practical Data Analyst workflow using PostgreSQL, SQL, Python, pandas, Jupyter Notebook, and data visualization. PostgreSQL was used to store and query the data, while Python was used to analyze and visualize the results.

## 3. Objective

The main objective of this project is to understand which factors are associated with higher or lower student exam performance.

The analysis focuses on answering the following questions:

- Which subject has the highest and lowest average score?
- Do students who complete test preparation perform better?
- How does lunch type relate to student performance?
- Does parental education level show differences in student outcomes?
- How are students distributed across high, average, and low performance levels?
- Which combination of factors is associated with stronger performance?

## 4. Tools and Technologies Used

- PostgreSQL
- SQL
- Python
- pandas
- Jupyter Notebook
- matplotlib
- GitHub

## 5. Dataset Description

The dataset contains 1,000 student records and includes the following columns:

- Gender
- Race/ethnicity
- Parental level of education
- Lunch type
- Test preparation course
- Math score
- Reading score
- Writing score

Additional calculated fields were created during the project:

- Total score
- Average score
- Performance level

Performance levels were categorized as:

- High Performer: average score of 80 or above
- Average Performer: average score from 60 to 79.99
- Low Performer: average score below 60

## 6. Data Preparation

The dataset was first imported into PostgreSQL using a raw table. A cleaned table was then created with improved column names for easier SQL analysis.

A SQL view named `student_performance_analysis` was created to calculate total score, average score, and performance level for each student.

This made the data easier to analyze in both SQL and Python.

## 7. SQL Analysis

SQL was used to perform the main structured analysis. The analysis included:

- Counting total student records
- Checking for missing values
- Calculating average math, reading, and writing scores
- Comparing performance by gender
- Comparing performance by test preparation course
- Comparing performance by lunch type
- Comparing performance by parental education level
- Creating performance-level categories
- Identifying top and bottom performing student groups

## 8. Key Findings

### 8.1 Subject Performance

The subject-wise analysis showed that students performed differently across math, reading, and writing.

Reading and writing scores were generally stronger than math scores. This suggests that math may be the subject where students need the most academic support.

### 8.2 Test Preparation Course

Students who completed the test preparation course generally achieved higher average scores than students who did not complete the course.

This suggests that test preparation may be positively associated with student performance. However, the analysis only shows association, not direct causation.

### 8.3 Lunch Type

Students with standard lunch generally performed better than students with free/reduced lunch.

In this dataset, lunch type may act as a proxy for socioeconomic background. This finding suggests that socioeconomic-related factors may be associated with academic performance.

### 8.4 Parental Level of Education

Student performance varied across parental education levels.

Students whose parents had higher education levels generally showed stronger performance. This may suggest that family educational background is associated with student academic outcomes.

### 8.5 Performance Level Distribution

Students were categorized into high, average, and low performance groups based on their average score.

Most students fell into the average performer category, while smaller groups were classified as high performers and low performers.

### 8.6 Combined Factor Analysis

When gender, lunch type, and test preparation course were analyzed together, the highest-performing groups often included students who had standard lunch and completed the test preparation course.

This shows that analyzing multiple factors together can provide stronger insight than analyzing each factor separately.

## 9. Visualizations Created

The following visualizations were created in Jupyter Notebook:

- Average score by subject
- Average score by gender
- Average score by test preparation course
- Student performance level distribution
- Average score by parental level of education
- Average score by lunch type
- Average subject scores by test preparation course
- Performance level distribution by test preparation course
- Average score by gender and test preparation course

These charts helped present the SQL analysis results in a clear and easy-to-understand format.

## 10. Conclusion

This project demonstrates how SQL and Python can be used together in a practical Data Analyst workflow.

PostgreSQL was used to store, clean, transform, and query the dataset. Python and pandas were used to load the SQL results and create visualizations. The analysis showed that test preparation, lunch type, and parental education level were associated with differences in student exam performance.

The project also helped demonstrate skills in database design, SQL querying, data transformation, exploratory data analysis, visualization, and analytical reporting.

## 11. Limitations

This dataset does not include several important variables that could affect student performance, such as:

- Study hours
- Attendance
- Family income
- Teacher quality
- School funding
- Prior academic performance
- Access to tutoring
- Mental health
- Learning environment

Because these variables are missing, the findings should be interpreted as associations rather than direct causes.

## 12. Future Improvements

This project can be improved in the future by:

- Adding a more advanced dashboard using Tableau or Power BI
- Performing statistical testing
- Adding predictive analysis using machine learning
- Comparing student performance across more detailed socioeconomic variables
- Creating an interactive dashboard for easier exploration
