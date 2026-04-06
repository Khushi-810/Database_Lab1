
SELECT name
FROM Student
WHERE dept1_id =
(
SELECT dept_id
FROM Stud1
WHERE student_id = 1
);

SELECT name
FROM Student
WHERE gender =
(
SELECT gender
FROM Student
WHERE student_id = 2
);


SELECT name
FROM Student
WHERE department_id =
(
SELECT department_id
FROM Student
WHERE student_id = 3
);


SELECT name
FROM Student
WHERE department_id IN
(
SELECT department_id
FROM Student
WHERE gender = 'Female'
);



SELECT name
FROM Student
WHERE student_id IN
(
SELECT student_id
FROM Enrollment
);


PROMPT
PROMPT Q6 Students enrolled in any course
SELECT name
FROM Student S
WHERE EXISTS
(
SELECT *
FROM Enrollment E
WHERE S.student_id = E.student_id
);


SELECT course_name
FROM Course
WHERE credits >
(
SELECT AVG(credits)
FROM Course
);


SELECT name
FROM Student
WHERE student_id >
(
SELECT AVG(student_id)
FROM Student
);


SELECT department_id
FROM Student
GROUP BY department_id
HAVING COUNT(*) >
(
SELECT AVG(student_count)
FROM
(
SELECT COUNT(*) student_count
FROM Student
GROUP BY department_id
)
);


SELECT name
FROM Student
WHERE student_id IN
(
SELECT student_id
FROM Enrollment
);


SELECT name
FROM Student
WHERE department_id IN
(
SELECT department_id
FROM Department
);


SELECT course_name
FROM Course
WHERE course_id IN
(
SELECT course_id
FROM Enrollment
);


SELECT course_name
FROM Course
WHERE credits =
(
SELECT MAX(credits)
FROM Course
);


SELECT student_id
FROM Enrollment
GROUP BY student_id
HAVING COUNT(course_id) > 1;


SELECT department_id
FROM Student
GROUP BY department_id
HAVING COUNT(*) =
(
SELECT MAX(student_count)
FROM
(
SELECT COUNT(*) student_count
FROM Student
GROUP BY department_id
)
);


SELECT name
FROM Student
WHERE student_id IN
(
SELECT student_id
FROM Enrollment
WHERE course_id IN
(
SELECT course_id
FROM Enrollment
WHERE student_id = 1
)
)
AND student_id <> 1;

SELECT name
FROM Student
WHERE student_id NOT IN
(
SELECT student_id
FROM Enrollment
);


SELECT course_name
FROM Course
WHERE course_id NOT IN
(
SELECT course_id
FROM Enrollment
);
