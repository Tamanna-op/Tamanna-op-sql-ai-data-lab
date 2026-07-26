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
-- Show every researcher ordered by experience (lowest to highest).
SELECT * 
FROM researchers 
ORDER BY experience_years ASC;

-- Challenge 2
-- Show every researcher ordered by experience (highest to lowest).
SELECT *
FROM researchers
ORDER BY experience_years DESC;

-- Challenge 3
-- Show all researchers ordered alphabetically by name.
SELECT *
FROM researchers
ORDER BY name ASC;

-- Challenge 4
-- If two researchers have the same experience,
-- sort them alphabetically.
SELECT *
FROM researchers
ORDER BY experience_years DESC, name ASC;

-- Challenge 5
-- Display only: Name, Team, Experience ; use renaming the output
SELECT name AS "Researcher Name" , team AS "Team", experience_years AS "Experience"
FROM researchers;

-- Boss Battle 1
-- Create a report showing only researchers with 3 or more years of experience.
-- Requirements: Show Name, Team, Experience Sort by: highest experience first, if tied, alphabetical name
SELECT name AS "Researcher Name", team AS "Team", experience_years AS "Experience"
FROM researchers
WHERE experience_years >=3
ORDER BY experience_years DESC, name ASC;

