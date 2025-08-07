USE Internship;


CREATE TABLE IF NOT EXISTS Student (
    student_no INT PRIMARY KEY,
    student_name VARCHAR(20),
    age INT,
    CONSTRAINT chechk_age CHECK (age >= 18)
);

INSERT INTO Student (student_no, student_name, age) VALUES
(1, 'Ashu', 21),
(2, 'Niki', 20),
(3, 'Rahul', 22);

CREATE TABLE IF NOT EXISTS citytwo (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(30),
    city_no INT,
    FOREIGN KEY (city_no) REFERENCES student(student_no)
);

INSERT INTO citytwo (city_id, city_name, city_no) VALUES
(101, 'Pune', 1),
(102, 'Mumbai', 2),
(103, 'Nashik', 3);

SELECT * FROM student;
SELECT * FROM citytwo;

select * from student where student_no=1 and student_name="Ashu";
select * from student where student_no=1 or student_name="Niki";

select * from student where student_name like 'A%';

select * from citytwo order by city_no;

SELECT * FROM citytwo ORDER BY city_no DESC;

select * from citytwo limit 2;

SELECT * FROM student WHERE student_no BETWEEN 70 AND 90;
