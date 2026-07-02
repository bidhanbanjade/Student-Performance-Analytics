# Final Insights Report

## Project Title

Student Performance Analytics: Identifying Factors Affecting Exam Scores

## Objective

The objective of this project was to analyze student exam performance data and identify factors associated with academic outcomes. The analysis focused on gender, race/ethnicity, parental level of education, lunch type, test preparation course, and scores in math, reading, and writing.

## Tools Used

- PostgreSQL
- Python
- pandas
- Jupyter Notebook
- matplotlib
- GitHub

## Key Findings

### 1. Test preparation was associated with higher scores

Students who completed the test preparation course generally achieved higher average scores than students who did not complete the course.

### 2. Lunch type showed a noticeable performance difference

Students with standard lunch generally performed better than students receiving free/reduced lunch. In this dataset, lunch type may act as a proxy for socioeconomic background.

### 3. Parental education showed variation in student outcomes

Average scores differed across parental education levels. Students whose parents had higher education levels generally showed stronger performance.

### 4. Reading and writing scores were stronger than math scores

The overall subject comparison showed that students performed better in reading and writing than in math.

### 5. Combined factors provided stronger insight

When gender, lunch type, and test preparation were analyzed together, the highest-performing groups often included students with standard lunch and completed test preparation.

## Conclusion

This project used SQL and Python to analyze student exam performance data. PostgreSQL was used to store, structure, transform, and query the dataset. Python and pandas were used to load SQL query results, perform analysis, and create visualizations.

The analysis suggests that test preparation, lunch type, and parental education level are associated with student exam performance. However, these results should be interpreted as associations, not direct causes.

## Limitations

This dataset does not include important variables such as study hours, attendance, teacher quality, family income, school funding, mental health, prior academic performance, or access to tutoring. Because of these missing variables, the analysis cannot prove direct causation.