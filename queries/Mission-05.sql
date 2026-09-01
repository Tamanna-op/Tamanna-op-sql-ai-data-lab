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
-- How many researchers are in each team?
SELECT
    team, 
    COUNT(*) AS "No. of researchers"
FROM researchers
GROUP BY team;

-- Challenge 2
-- What is the average experience of researchers in each team?
SELECT 
    team, 
    AVG(experience_years) AS "Average experience"
FROM researchers
GROUP BY team;

-- Challenge 3
-- What is the highest experience level in each team?
SELECT
    team, 
    MAX(experience_years) AS "Highest Experience"
FROM researchers
GROUP BY team;

-- Challenge 4
-- What is the lowest experience level in each team?
SELECT
    team, 
    MIN(experience_years) AS "Lowest Experience"
FROM researchers
GROUP BY team;

-- Challenge 5
-- Create one report containing:
-- Team
-- Number of researchers
-- Average experience
-- Maximum experience
-- Minimum experience
SELECT
    team, COUNT(*) AS "No. of researchers",
    AVG(experience_years) AS "Average experience",
    MAX(experience_years) AS "Highest Experience",
    MIN(experience_years) AS "Lowest Experience"
FROM researchers
GROUP BY team;

-- Boss Battle
-- Create a report showing:
-- Team
-- Number of researchers
-- Average experience
-- Sort the teams from highest average experience to lowest.
SELECT
    team, COUNT(*) AS "No. of researchers",
    AVG(experience_years) AS "Average experience"
FROM researchers
GROUP BY team 
ORDER BY "Average experience"; 

-- Bonus Challenge
-- Which team has the highest total combined experience?
SELECT
    team,
    SUM(experience_years) AS "Total Experience"
FROM researchers
GROUP BY team
ORDER BY "Total Experience" DESC;