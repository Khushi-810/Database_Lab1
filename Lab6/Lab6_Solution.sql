# 1. Total number of students 

SELECT COUNT(*) AS TOTAL_STUDENTS
FROM Student;

# 2. Total number of faculty

SELECT COUNT(*) AS TOTAL_FACULTY
FROM Faculty;

# 3. Total number of courses

SELECT COUNT(*) AS TOTAL_COURSES
FROM Course;

# 4. Maximum credits among courses


SELECT MAX(credits) AS MAX_CREDITS
FROM Course;

# 5. Minimum credits among courses

SELECT MIN(credits) AS MIN_CREDITS
FROM Course;

# 6. Number of students in each department
PROMPT =====================================

SELECT department_id, COUNT(*) AS TOTAL_STUDENTS
FROM Student
GROUP BY department_id;

# 7. Number of faculty in each department

SELECT department_id, COUNT(*) AS TOTAL_FACULTY
FROM Faculty
GROUP BY department_id;

# 8. Number of courses in each department

SELECT department_id, COUNT(*) AS TOTAL_COURSES
FROM Course
GROUP BY department_id;


# 9. Number of enrollments in each semester

SELECT semester, COUNT(*) AS TOTAL_ENROLLMENTS
FROM Enrollment
GROUP BY semester;


# 10. Number of students for each grade

SELECT grade, COUNT(*) AS TOTAL_STUDENTS
FROM Enrollment
GROUP BY grade;

# 11. Departments having more than 3 students


SELECT department_id, COUNT(*) AS TOTAL_STUDENTS
FROM Student
GROUP BY department_id
HAVING COUNT(*) > 3;

# 12. Semesters having more than 2 enrollments

SELECT semester, COUNT(*) AS TOTAL
FROM Enrollment
GROUP BY semester
HAVING COUNT(*) > 2;

# 13. Grades assigned to more than one student

SELECT grade, COUNT(*) AS TOTAL
FROM Enrollment
GROUP BY grade
HAVING COUNT(*) > 1;

# 14. Departments offering more than one course

SELECT department_id, COUNT(*) AS TOTAL
FROM Course
GROUP BY department_id
HAVING COUNT(*) > 1;

# 15. Students enrolled in each course

SELECT course_id, COUNT(student_id) AS TOTAL_STUDENTS
FROM Enrollment
GROUP BY course_id;

# 16. Course name with number of enrolled students

SELECT C.course_name, COUNT(E.student_id) AS ENROLLED
FROM Course C
JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

# 17. Department and number of students

SELECT department_id, COUNT(student_id) AS TOTAL
FROM Student
GROUP BY department_id;


# 18. Faculty name and number of courses taught

SELECT F.name, COUNT(C.course_id) AS TOTAL_COURSES
FROM Faculty F
JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.name;

# 19. Course name with maximum grade

SELECT C.course_name, MAX(E.grade) AS MAX_GRADE
FROM Course C
JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

# 20. Department and number of courses

SELECT department_id, COUNT(course_id) AS TOTAL
FROM Course
GROUP BY department_id;

# 21. Semester and total students enrolled

SELECT semester, COUNT(student_id) AS TOTAL
FROM Enrollment
GROUP BY semester;

# 22. Courses with more than 2 students enrolled

SELECT course_id, COUNT(student_id) AS TOTAL
FROM Enrollment
GROUP BY course_id
HAVING COUNT(student_id) > 2;

