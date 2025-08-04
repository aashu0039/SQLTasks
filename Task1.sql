USE Internship;


CREATE TABLE IF NOT EXISTS village (
    village_no INT PRIMARY KEY,
    people_name VARCHAR(20),
    age INT,
    CONSTRAINT chk_age CHECK (age >= 18)
);

INSERT INTO village (village_no, people_name, age) VALUES
(1, 'Ashu', 21),
(2, 'Niki', 20),
(3, 'Rahul', 22);

CREATE TABLE IF NOT EXISTS city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(30),
    village_no INT,
    FOREIGN KEY (village_no) REFERENCES village(village_no)
);

INSERT INTO city (city_id, city_name, village_no) VALUES
(101, 'Pune', 1),
(102, 'Mumbai', 2),
(103, 'Nashik', 3);

SELECT * FROM village;
SELECT * FROM city;

