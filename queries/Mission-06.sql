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

-- Challenge 1 — Large Teams
-- Show only teams that have at least 3 researchers.
-- Return: Team, Number of researchers
SELECT 
    team, 
    COUNT(*) AS "No. of Researchers"
FROM researchers
GROUP BY team
HAVING COUNT(*)>=3;

-- Challenge 2 — Experienced Teams
-- Show teams whose average experience is greater than 4 years.
-- Return: Team, Average experience
SELECT 
    team, 
    AVG(experience_years) AS "Average experience"
FROM researchers
GROUP BY team
HAVING AVG(experience_years)>4;

-- Challenge 3 — High Experience
-- Show teams whose maximum experience is at least 7 years.
-- Return: Team, Maximum experience
SELECT 
    team, 
    MAX(experience_years) AS "Maximum experience"
FROM researchers
GROUP BY team
HAVING MAX(experience_years)>=7;

-- Challenge 4 — Combined Report
-- Show: Team, Number of researchers, Average experience
-- But only include teams that have at least 3 researchers.
-- Sort by number of researchers from highest to lowest.
SELECT 
    team,
    COUNT(*) AS "Number of researchers",
    AVG(experience_years) AS "Average experience"
FROM researchers
GROUP BY team
HAVING COUNT(*)>=3
ORDER BY COUNT(*) DESC;

-- ⚔️ Boss Battle 2
-- The lab manager wants to identify strong research teams.
-- A strong team is defined as:
-- At least 2 researchers
-- Average experience greater than 4 years
-- Create a report showing: Team, Number of researchers, Average experience
-- Only qualifying teams should appear.
-- Sort them by average experience, highest first.
SELECT 
    team, 
    COUNT(*) AS "Number of researchers", 
    AVG(experience_years) AS "Average experience"
FROM researchers
GROUP BY team
HAVING COUNT(*)>=2 AND AVG(experience_years)>4
ORDER BY AVG(experience_years) DESC;

-- Bonus Challenge
-- Which teams have a total combined experience greater than 10 years?
SELECT 
    team, 
    SUM(experience_years) AS "Total combined experience"
FROM researchers
GROUP BY team
HAVING SUM(experience_years)>10;