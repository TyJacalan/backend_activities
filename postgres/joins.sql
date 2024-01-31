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