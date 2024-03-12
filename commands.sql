CREATE TABLE department (
    dept_name VARCHAR(255) PRIMARY KEY,
    dept_website VARCHAR(255) NOT NULL
);

CREATE TABLE proff (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    proff_website VARCHAR(255) NOT NULL,
    foreign key (dept_name) references department(dept_name)
);


CREATE TABLE researcharea (
    id SERIAL PRIMARY KEY,
    researcharea_name VARCHAR(255) NOT NULL,
    researcharea_description TEXT NOT NULL
);

CREATE TABLE proff_researcharea (
    proff_id INT NOT NULL,
    researcharea_id INT NOT NULL,
    PRIMARY KEY (proff_id, researcharea_id),
    foreign key (proff_id) references proff(id),
    foreign key (researcharea_id) references researcharea(id)
);


INSERT INTO department (dept_name, dept_website) VALUES
('Computer Science', 'http://www.iitkgp.ac.in/department/CS'),
('Artificial Intelligence', 'http://www.iitkgp.ac.in/department/AI'),
('Geoscience', 'http://www.iitkgp.ac.in/department/GS'),
('Electrical Engineering', 'http://www.iitkgp.ac.in/department/EE');


INSERT INTO proff (name, dept_name, proff_website) VALUES
('Somak Aditya', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-eb4ccb5a339da7a1f01b8f9688896b65'),
('Souranghsu Bhattacharya', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-sourangshu'),
('Abir Das', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-abir'),
('Animesh Mukherjee', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-animeshm'),
('Pawan Goyal', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-pawang'),
('Adway Mitra', 'Artificial Intelligence', 'http://www.iitkgp.ac.in/department/AI/faculty/ai-adway'),
('Jaiul Hoque Paik', 'Geoscience', 'http://www.iitkgp.ac.in/department/GS/faculty/gs-jiaul'),
('Debdoot Sheet', 'Electrical Engineering', 'http://www.iitkgp.ac.in/department/EE/faculty/ee-debdoot'),
('Krothapalli Sreenivasa Rao', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-ksrao'),
('Pabitra Mitra', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-pabitra'),
('Sudeshna Sarkar', 'Computer Science', 'http://www.iitkgp.ac.in/department/CS/faculty/cs-sudeshna');

INSERT INTO researcharea (researcharea_name, researcharea_description) VALUES
('Artificial Intelligence', 'Artificial Intelligence'),
('Natural Language Processing', 'Natural Language Processing'),
('Computer Vision', 'Computer Vision'),
('Machine Learning', 'Machine Learning'),
('Information Retrieval', 'Information Retrieval'),
('Big Data Analytics', 'Big Data Analytics'),
('AI/ML/Cognitive Science', 'AI/ML/Cognitive Science'),
('Image and Video Processing', 'Image and Video Processing'),
('Pattern Recognition', 'Pattern Recognition'),
('Social Network', 'Social Network'),
('Data and Web Mining', 'Data and Web Mining'),
('Generative and graphic Models', 'Generative and graphic Models'),
('Climate Informatics', 'Climate Informatics'),
('Biomedical Systems', 'Biomedical Systems'),
('Medical Informatics', 'Medical Informatics'),
('Medical Imaging', 'Medical Imaging'),
('Signal Processing', 'Signal Processing'),
('Speech Processing', 'Speech Processing'),
('Audio/Media and Multimedia', 'Audio/Media and Multimedia');


INSERT INTO proff_researcharea (proff_id, researcharea_id) VALUES (1, 1), (1, 2), (1, 3), (1, 4);

INSERT INTO proff_researcharea (proff_id, researcharea_id) VALUES (2, 5), (2, 6), (2, 2), (2, 3), (2, 7);


INSERT INTO proff_researcharea (proff_id, researcharea_id) VALUES (3, 3), (3, 1), (3, 4), (3, 8), (3, 9);


INSERT INTO proff_researcharea (proff_id, researcharea_id) VALUES (4, 2), (4, 5), (4, 10), (4, 11);


INSERT INTO proff_researcharea (proff_id, researcharea_id) VALUES (5, 2), (5, 5), (5, 10), (5, 11);
