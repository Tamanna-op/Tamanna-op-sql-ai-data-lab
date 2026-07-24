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
-- Show all researchers who belong to the Vision team.
SELECT * FROM researchers WHERE team='Vision';

-- Challenge 2
-- Show all researchers with more than 5 years of experience.
SELECT * FROM researchers WHERE experience_years>5;

-- Challenge 3
-- Show researchers with exactly 3 years of experience.
SELECT * FROM researchers WHERE experience_years=3;

-- Challenge 4
-- Show researchers who are in the Research team AND have more than 5 years of experience.
SELECT * FROM researchers WHERE (team='Research') AND (experience_years>5);

-- Challenge 5
-- Show researchers who are in the Vision team OR the NLP team.
SELECT * FROM researchers WHERE (team='Vision') OR (team='NLP');

-- Mini Boss Battle
-- Find all researchers who:
--	have 5 or more years of experience,
--	and belong to either the Research or Vision team.
SELECT * FROM researchers WHERE (experience_years>=5) AND (team='Research' OR team='Vision');