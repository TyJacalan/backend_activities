CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    first_name character(50) NOT NULL,
    middle_name character(50),
    last_name character(50) NOT NULL,
    age numeric(3,0) NOT NULL,
    location  character(100) NOT NULL
)

INSERT INTO students (id, first_name, last_name, age, location)
VALUES(1, 'Juan', 'Cruz', 18,'Manila'),
       (2, 'Anne', 'Wall', 20, 'Manila'),
       (3, 'Theresa', 'Joseph', 21, 'Manila'),
       (4, 'Isaac', 'Gray', 19, 'Laguna'),
       (5, 'Zack', 'Matthews', 22,'Marikina'),
       (6, 'Finn', 'Lam', 25, 'Manila');

--Update the first record
UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

--Delete the last record
DELETE FROM students WHERE id = (SELECT MAX (id) FROM students);

--Display the count of all students
SELECT COUNT(*) FROM students;

--Select all students with location is Manila
SELECT * FROM students WHERE location = 'Manila';

--Display the average age of all students
SELECT ROUND(AVG(age)) FROM students;

--Display all students by age descending order
SELECT * FROM students ORDER BY age DESC;

CREATE TYPE valid_grades AS ENUM('','A','B','C','D','E','F');

CREATE TABLE research_papers (
    id INTEGER PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    grade VALID_GRADES
);

INSERT INTO research_papers (id, student_id, grade)
VALUES (1, 4, 'A'),
       (2, 1, 'A'),
       (3, 4, 'B'),
       (4, 1, 'B'),
       (5, 2, NULL),
       (6, 3, NULL),
       (7, 4, 'D'),
       (8, 1, 'D'),
       (9, 4, 'E'),
       (10, 1, 'F');

DROP TABLE research_papers;
       
--Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)
SELECT s.first_name, s.last_name, COUNT(rp.id) AS num
FROM students s
INNER JOIN research_papers rp
ON s.id = rp.student_id
GROUP BY s.id

--Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)
SELECT s.first_name, s.last_name, rp.id AS research_paper_id, rp.grade
FROM students s
INNER JOIN research_papers rp
ON s.id = rp.student_id
WHERE rp.grade IS NULL OR rp.grade = '';

