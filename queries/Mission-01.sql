CREATE TABLE researchers (
    researcher_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    team VARCHAR(50),
    specialization VARCHAR(50),
    experience_years INT
);
INSERT INTO researchers (name, team, specialization, experience_years)
VALUES
('Aarav Sharma', 'Vision', 'Computer Vision', 5),
('Priya Singh', 'NLP', 'Natural Language Processing', 3),
('Rohan Patel', 'Vision', 'Computer Vision', 4),
('Ananya Gupta', 'ML Platform', 'MLOps', 6),
('Kabir Mehta', 'NLP', 'Natural Language Processing', 2),
('Sneha Iyer', 'Research', 'Reinforcement Learning', 7),
('Arjun Nair', 'Research', 'Reinforcement Learning', 5),
('Meera Joshi', 'ML Platform', 'MLOps', 4),
('Dev Verma', 'Vision', 'Computer Vision', 3),
('Ishita Kapoor', 'Research', 'Deep Learning', 8);

SELECT * FROM researchers;
SELECT name FROM researchers;
SELECT team FROM researchers;
SELECT DISTINCT team FROM researchers;
SELECT name FROM researchers LIMIT(5);