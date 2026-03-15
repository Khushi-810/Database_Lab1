
-- DBMS LAB - 5
-- Data Retrieval from Multiple Tables Using JOIN

SET LINESIZE 200
SET PAGESIZE 200

# 1. Display StudentID, Student Name and CourseID

SELECT S.student_id, S.name, E.course_id
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;


# 2. Display Student Name and Semester

SELECT S.name, E.semester
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;


# 3. Display Student Name and Grade

SELECT S.name, E.grade
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;


# 4. Display Course Name, Credits and Faculty Name

SELECT C.course_name, C.credits, F.name
FROM Course C
INNER JOIN Faculty F
ON C.faculty_id = F.faculty_id;


# 5. Display Courses taught by FacultyID = 101


SELECT C.course_name
FROM Course C
INNER JOIN Faculty F
ON C.faculty_id = F.faculty_id
WHERE F.faculty_id = 101;


# 6. Display Faculty Name, Designation and Course Name

SELECT F.name, F.designation, C.course_name
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id;


# 7. Display Student Name with Course Name

SELECT S.name, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id;


# 8. Display Student Name, Course Name and Semester

SELECT S.name, C.course_name, E.semester
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id;


# 9. Display Student Name, Course Name and Grade for Semester 4

SELECT S.name, C.course_name, E.grade
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
WHERE E.semester = 'Sem-4';

# 10. Display Courses taken by StudentID = 1

SELECT C.course_name
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
INNER JOIN Student S
ON S.student_id = E.student_id
WHERE S.student_id = 1;


# 11. Display Student Name, DepartmentID and Course Name

SELECT S.name, S.department_id, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id;


# 12. Display Department-wise list of Courses

SELECT D.department_name, C.course_name
FROM Department D
INNER JOIN Course C
ON D.department_id = C.department_id;


# 13. Display Faculty Name and Department Name

SELECT F.name, D.department_name
FROM Faculty F
INNER JOIN Department D
ON F.department_id = D.department_id;


# 14. Display Student Name and Course Name for Department 1

SELECT S.name, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
WHERE S.department_id = 1;


# 15. Display Student Name and Course Name sorted by Name

SELECT S.name, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
ORDER BY S.name;


# 16. Display Faculty Name and Course Name sorted by Credits

SELECT F.name, C.course_name
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
ORDER BY C.credits DESC;


# 17. Number of Students Enrolled in Each Course

SELECT C.course_name, COUNT(E.student_id) AS TOTAL_STUDENTS
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;


# 18. Number of Courses taught by each Faculty
  
SELECT F.name, COUNT(C.course_id) AS TOTAL_COURSES
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.name;

# 19. Department-wise count of Students

SELECT D.department_name, COUNT(S.student_id) AS TOTAL_STUDENTS
FROM Department D
INNER JOIN Student S
ON D.department_id = S.department_id
GROUP BY D.department_name;

# 20. Course Name with Maximum Grade

SELECT C.course_name, MAX(E.grade) AS HIGHEST_GRADE
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

