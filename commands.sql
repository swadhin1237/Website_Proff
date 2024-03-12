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