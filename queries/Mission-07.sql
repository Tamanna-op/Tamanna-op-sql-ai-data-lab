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

-- Challenge 1 — Connect Researchers & Projects
-- Show: Researcher name, Project name
-- You need to connect the two tables.
SELECT 
	researchers.name,
    projects.project_name
FROM researchers INNER JOIN projects
ON researchers.researcher_id=projects.researcher_id;

-- Challenge 2 — Add Team
-- Show: Researcher name, Team, Project name
SELECT
	researchers.name, 
    researchers.team,
    projects.project_name
FROM researchers INNER JOIN projects
ON researchers.researcher_id = projects.researcher_id;

-- Challenge 3 — Add Domain
-- Show: Researcher name, Team, Project name, Project domain
SELECT 
	researchers.name, 
    researchers.team,
    projects.project_name, 
    projects.domain
FROM researchers INNER JOIN projects
ON researchers.researcher_id = projects.researcher_id;

-- Challenge 4 — Filter the Joined Data
-- Show only researchers from the Vision team, 
-- along with their projects.
SELECT
	researchers.name,
    researchers.team, 
    projects.project_name
FROM researchers INNER JOIN projects
ON researchers.researcher_id = projects.researcher_id
WHERE researchers.team = 'Vision';

-- Challenge 5 — Sort
-- Show: Researcher name, Team, Project name
-- Sort alphabetically by researcher name.
SELECT
	researchers.name, 
    researchers.team, 
    projects.project_name
FROM researchers INNER JOIN projects
ON researchers.researcher_id = projects.researcher_id
ORDER BY researchers.name;

-- Boss Battle 3
-- The lab manager asks:
-- "Show me all researchers working on Computer Vision projects, 
-- along with their team and project name."
-- Return: Researcher, Team, Project
SELECT 
	researchers.name, 
    researchers.team, 
    projects.project_name
FROM researchers INNER JOIN projects
ON researchers.researcher_id = projects.researcher_id
WHERE projects.domain = 'Computer Vision';