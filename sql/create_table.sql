DROP TABLE IF EXISTS student_performance;
DROP TABLE IF EXISTS student_performance_raw;

CREATE TABLE student_performance_raw (
    gender VARCHAR(20),
    "race/ethnicity" VARCHAR(20),
    "parental level of education" VARCHAR(100),
    lunch VARCHAR(50),
    "test preparation course" VARCHAR(50),
    "math score" INT,
    "reading score" INT,
    "writing score" INT
);

CREATE TABLE student_performance (
    student_id SERIAL PRIMARY KEY,
    gender VARCHAR(20),
    race_ethnicity VARCHAR(20),
    parental_level_of_education VARCHAR(100),
    lunch VARCHAR(50),
    test_preparation_course VARCHAR(50),
    math_score INT,
    reading_score INT,
    writing_score INT
);