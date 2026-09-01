-- CREATE TABLE researchers (
--     researcher_id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     team VARCHAR(50),
--     specialization VARCHAR(50),
--     experience_years INT
-- );
-- INSERT INTO researchers (name, team, specialization, experience_years)
-- VALUES
-- ('Aarav Sharma', 'Vision', 'Computer Vision', 5),
-- ('Priya Singh', 'NLP', 'Natural Language Processing', 3),
-- ('Rohan Patel', 'Vision', 'Computer Vision', 4),
-- ('Ananya Gupta', 'ML Platform', 'MLOps', 6),
-- ('Kabir Mehta', 'NLP', 'Natural Language Processing', 2),
-- ('Sneha Iyer', 'Research', 'Reinforcement Learning', 7),
-- ('Arjun Nair', 'Research', 'Reinforcement Learning', 5),
-- ('Meera Joshi', 'ML Platform', 'MLOps', 4),
-- ('Dev Verma', 'Vision', 'Computer Vision', 3),
-- ('Ishita Kapoor', 'Research', 'Deep Learning', 8);

-- Challenge 1
-- Return the number of researchers.
SELECT
COUNT(*) AS "Total Researchers"
FROM researchers;

-- Challenge 2
-- Calculate the sum of experience_years.
SELECT 
SUM(experience_years) AS "Total Experience Years"
FROM researchers;

-- Challenge 3
-- Calculate the average experience_years.
SELECT
AVG(experience_years) AS "Average Experience Years"
FROM researchers;

-- Challenge 4
-- Calculate the maximum experience_years.
SELECT
MAX(experience_years) AS "Maximum Experience Years"
FROM researchers;

-- Challenge 5
-- Calculate the minimum experience_years.
SELECT
MIN(experience_years) AS "Minimum Experience Years"
FROM researchers;

-- Challenge 6
-- The manager wants all five statistics in one result
-- Try to produce one row containing all five values.
SELECT
    COUNT(*) AS "Total Researchers",
    SUM(experience_years) AS "Total Experience Years",
    AVG(experience_years) AS "Average Experience Years",
    MAX(experience_years) AS "Maximum Experience Years",
    MIN(experience_years) AS "Minimum Experience Years"
FROM researchers;

-- Challenge 7
-- Among researchers with at least 5 years of experience, 
-- what is their average experience?
SELECT 
AVG(experience_years) AS "Average experience"
FROM researchers
WHERE experience_years>=5;

-- Bonus Challenge
-- How many researchers have more than 4 years of experience?
SELECT
COUNT(*) AS "More than 4 years of experience"
FROM researchers
WHERE experience_years>4;