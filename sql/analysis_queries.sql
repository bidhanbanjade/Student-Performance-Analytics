-- =====================================================
-- Student Performance Analytics
-- SQL Analysis Queries
-- =====================================================

-- 1. Check total records
SELECT COUNT(*) AS total_students
FROM student_performance;


-- 2. View first 10 records
SELECT *
FROM student_performance
LIMIT 10;


-- 3. Check for missing values
SELECT
    COUNT(*) AS total_rows,
    COUNT(gender) AS gender_count,
    COUNT(race_ethnicity) AS race_count,
    COUNT(parental_level_of_education) AS parental_education_count,
    COUNT(lunch) AS lunch_count,
    COUNT(test_preparation_course) AS test_prep_count,
    COUNT(math_score) AS math_score_count,
    COUNT(reading_score) AS reading_score_count,
    COUNT(writing_score) AS writing_score_count
FROM student_performance;


-- 4. Create a view with total score, average score, and performance level
DROP VIEW IF EXISTS student_performance_analysis;

CREATE VIEW student_performance_analysis AS
SELECT
    student_id,
    gender,
    race_ethnicity,
    parental_level_of_education,
    lunch,
    test_preparation_course,
    math_score,
    reading_score,
    writing_score,
    (math_score + reading_score + writing_score) AS total_score,
    ROUND((math_score + reading_score + writing_score) / 3.0, 2) AS average_score,
    CASE
        WHEN ROUND((math_score + reading_score + writing_score) / 3.0, 2) >= 80 THEN 'High Performer'
        WHEN ROUND((math_score + reading_score + writing_score) / 3.0, 2) >= 60 THEN 'Average Performer'
        ELSE 'Low Performer'
    END AS performance_level
FROM student_performance;


-- 5. Check the analysis view
SELECT *
FROM student_performance_analysis
LIMIT 10;


-- 6. Overall average scores
SELECT
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis;


-- 7. Average score by gender
SELECT
    gender,
    COUNT(*) AS student_count,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis
GROUP BY gender
ORDER BY overall_avg_score DESC;


-- 8. Average score by test preparation course
SELECT
    test_preparation_course,
    COUNT(*) AS student_count,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis
GROUP BY test_preparation_course
ORDER BY overall_avg_score DESC;


-- 9. Average score by lunch type
SELECT
    lunch,
    COUNT(*) AS student_count,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis
GROUP BY lunch
ORDER BY overall_avg_score DESC;


-- 10. Average score by parental level of education
SELECT
    parental_level_of_education,
    COUNT(*) AS student_count,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis
GROUP BY parental_level_of_education
ORDER BY overall_avg_score DESC;


-- 11. Average score by race/ethnicity group
SELECT
    race_ethnicity,
    COUNT(*) AS student_count,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    ROUND(AVG(writing_score), 2) AS avg_writing_score,
    ROUND(AVG(average_score), 2) AS overall_avg_score
FROM student_performance_analysis
GROUP BY race_ethnicity
ORDER BY overall_avg_score DESC;


-- 12. Performance level distribution
SELECT
    performance_level,
    COUNT(*) AS student_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM student_performance_analysis), 2) AS percentage
FROM student_performance_analysis
GROUP BY performance_level
ORDER BY student_count DESC;


-- 13. Test preparation vs performance level
SELECT
    test_preparation_course,
    performance_level,
    COUNT(*) AS student_count
FROM student_performance_analysis
GROUP BY test_preparation_course, performance_level
ORDER BY test_preparation_course, student_count DESC;


-- 14. Lunch type vs test preparation
SELECT
    lunch,
    test_preparation_course,
    COUNT(*) AS student_count,
    ROUND(AVG(average_score), 2) AS avg_score
FROM student_performance_analysis
GROUP BY lunch, test_preparation_course
ORDER BY lunch, avg_score DESC;


-- 15. Top 10 highest performing students
SELECT
    student_id,
    gender,
    race_ethnicity,
    parental_level_of_education,
    lunch,
    test_preparation_course,
    math_score,
    reading_score,
    writing_score,
    total_score,
    average_score
FROM student_performance_analysis
ORDER BY average_score DESC
LIMIT 10;


-- 16. Bottom 10 lowest performing students
SELECT
    student_id,
    gender,
    race_ethnicity,
    parental_level_of_education,
    lunch,
    test_preparation_course,
    math_score,
    reading_score,
    writing_score,
    total_score,
    average_score
FROM student_performance_analysis
ORDER BY average_score ASC
LIMIT 10;


-- 17. Subject-wise highest, lowest, and average scores
SELECT
    MIN(math_score) AS min_math,
    MAX(math_score) AS max_math,
    ROUND(AVG(math_score), 2) AS avg_math,
    MIN(reading_score) AS min_reading,
    MAX(reading_score) AS max_reading,
    ROUND(AVG(reading_score), 2) AS avg_reading,
    MIN(writing_score) AS min_writing,
    MAX(writing_score) AS max_writing,
    ROUND(AVG(writing_score), 2) AS avg_writing
FROM student_performance_analysis;


-- 18. Students who scored below 60 average
SELECT
    COUNT(*) AS students_below_60
FROM student_performance_analysis
WHERE average_score < 60;


-- 19. Students who scored 80 or above average
SELECT
    COUNT(*) AS students_80_or_above
FROM student_performance_analysis
WHERE average_score >= 80;


-- 20. Best performing group combination
SELECT
    gender,
    lunch,
    test_preparation_course,
    COUNT(*) AS student_count,
    ROUND(AVG(average_score), 2) AS avg_score
FROM student_performance_analysis
GROUP BY gender, lunch, test_preparation_course
HAVING COUNT(*) >= 10
ORDER BY avg_score DESC;