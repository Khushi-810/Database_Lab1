# Part A — Basic Data Display (Using Aliases)

# 1 Display all columns from Student with aliases

sql
SELECT 
student_id AS Roll_No,
name AS Student_Name,
date_of_birth AS DOB,
gender AS Gender,
contact_number AS Contact_No,
department_id AS Dept_ID
FROM Student;

# 2 Display StudentID, Name, DepartmentID with new names

sql
SELECT 
student_id AS Roll_No,
name AS Student_Name,
department_id AS Dept_ID
FROM Student;

# 3 Display Faculty table with readable names

  sql
SELECT 
faculty_id AS Faculty_ID,
faculty_Name AS Faculty_Name,
designation AS Designation,
email AS Email_Address,
department_id AS Dept_ID
FROM Faculty;

# 4 Display Course table with renamed headers

sql
SELECT 
course_id AS Course_ID,
course_name AS Course_Name,
credits AS Course_Credits,
department_id AS Dept_ID,
faculty_id AS Faculty_ID
FROM Course;

# 5 Display Enrollment table with aliases

sql
SELECT 
student_id AS Student_ID,
course_id AS Course_ID,
semester AS Semester,
grade AS Grade
FROM Enrollment;

# Part B — Conditional Data Display (WHERE)

# 6 Students whose DepartmentID = 1

sql
SELECT *
FROM Student
WHERE department_id = 1;

# 7 Female students

  sql
SELECT *
FROM Student
WHERE gender = 'Female';

# 8 Faculty with designation Assistant Professor

sql
SELECT *
FROM Faculty
WHERE designation = 'Assistant Professor';

# 9 Faculty in Department 2

sql
SELECT *
FROM Faculty
WHERE department_id = 2;

# 10 Courses with Credits ≥ 4

  sql
SELECT *
FROM Course
WHERE credits >= 4;

# 11 Students born after 01-JAN-2003

  sql
SELECT *
FROM Student
WHERE date_of_birth > DATE '2003-01-01';

# 12 Students enrolled in Semester 4

sql
SELECT *
FROM Enrollment
WHERE semester = 'Sem-4';

# Part C — Sorting and Limiting
  
# 13 Students sorted by Name ASC

sql
SELECT *
FROM Student
ORDER BY name ASC;

# 14 Students sorted by DOB DESC

sql
SELECT *
FROM Student
ORDER BY date_of_birth DESC;

# 15 Faculty sorted by Designation

  sql
SELECT *
FROM Faculty
ORDER BY designation ASC;

# 16 Courses sorted by Credits DESC

  sql
SELECT *
FROM Course
ORDER BY credits DESC;

# 17 First 3 students

  sql
SELECT *
FROM Student
WHERE ROWNUM <= 3;

# 18 First 5 courses
  
sql
SELECT *
FROM Course
WHERE ROWNUM <= 5;

# Part D — Derived / Computed Output
  
# 19 Student name with Age

  sql
SELECT 
name,
TRUNC(MONTHS_BETWEEN(SYSDATE, date_of_birth)/12) AS Age
FROM Student;

# 20 CourseName with Credits + 1
sql
SELECT 
course_name,
credits + 1 AS Updated_Credits
FROM Course;

# 21 Enrollment with Final_Grade column

sql
SELECT 
student_id,
course_id,
semester,
grade AS Final_Grade
FROM Enrollment;

# 22 Student name with Birth Year

sql
SELECT 
name,
EXTRACT(YEAR FROM date_of_birth) AS Birth_Year
FROM Student;

# 23 Faculty name with Email Domain

  sql
SELECT 
faculty_Name,
SUBSTR(email, INSTR(email,'@')+1) AS Email_Domain
FROM Faculty;


  
