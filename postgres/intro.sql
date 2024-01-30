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
DELETE FROM students WHERE id = (SELECT COUNT (*) FROM students);

--Display the count of all students
SELECT COUNT(*) FROM students;

--Select all students with location is Manila
SELECT * FROM students WHERE location = 'Manila';

--Display the average age of all students
SELECT AVG(age) FROM students;

--Display all students by age descending order
SELECT * FROM students ORDER BY age DESC;

