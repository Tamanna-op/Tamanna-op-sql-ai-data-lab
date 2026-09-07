CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    domain VARCHAR(50),
    researcher_id INT REFERENCES researchers(researcher_id)
);

INSERT INTO projects (project_name, domain, researcher_id)
VALUES
('Object Detection', 'Computer Vision', 1),
('Language Model', 'NLP', 2),
('Image Segmentation', 'Computer Vision', 3),
('MLOps Pipeline', 'MLOps', 4),
('Text Classification', 'NLP', 5),
('Robot Learning', 'Reinforcement Learning', 6),
('Autonomous Navigation', 'Reinforcement Learning', 7),
('Model Monitoring', 'MLOps', 8);