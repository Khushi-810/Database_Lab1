# Part A — Basic Data Display (Using Aliases)

# 1 Display all columns from Student with aliases

sql
SELECT 
StudentID AS Roll_No,
Name AS Student_Name,
Gender AS Gender,
DateOfBir AS DOB,
ContactNumber AS Contact_No,
DepartmentID AS Dept_ID
FROM Student;

# 2 Display StudentID, Name, DepartmentID with new names

sql
SELECT 
StudentID AS Roll_No,
Name AS Student_Name,
DepartmentID AS Dept_ID
FROM Student;

# 3 Display Faculty table with readable names

  sql
SELECT 
FacultyID AS Faculty_ID,
Name AS Faculty_Name,
Designation AS Designation,
Email AS Email_Address,
DepartmentID AS Dept_ID
FROM Faculty;

# 4 Display Course table with renamed headers

sql
SELECT 
CourseID AS Course_ID,
CourseName AS Course_Name,
Credits AS Course_Credits,
DepartmentID AS Dept_ID,
FacultyID AS Faculty_ID
FROM Course;

# 5 Display Enrollment table with aliases

sql
SELECT 
EnrollmentID AS Enrollment_ID,
StudentID AS Student_ID,
CourseID AS Course_ID,
Semester AS Semester,
Grade AS Grade
FROM Enrollment;

# Part B — Conditional Data Display (WHERE)

# 6 Students whose DepartmentID = 1

sql
SELECT *
FROM Student
WHERE DepartmentID = 1;

# 7 Female students

  sql
SELECT *
FROM Student
WHERE Gender = 'Female';

# 8 Faculty with designation Assistant Professor

sql
SELECT *
FROM Faculty
WHERE Designation = 'Assistant Professor';

# 9 Faculty in Department 2

sql
SELECT *
FROM Faculty
WHERE DepartmentID = 2;

# 10 Courses with Credits ≥ 4

  sql
SELECT *
FROM Course
WHERE Credits >= 4;

# 11 Students born after 01-JAN-2003

  sql
SELECT *
FROM Student
WHERE DateOfBir > DATE '2003-01-01';

# 12 Students enrolled in Semester 4

sql
SELECT *
FROM Enrollment
WHERE Semester = 'Sem-4';

# Part C — Sorting and Limitin
  # 13 Students sorted by Name ASC

sql
SELECT *
FROM Student
ORDER BY Name ASC;

# 14 Students sorted by DOB DESC

sql
SELECT *
FROM Student
ORDER BY DateOfBir DESC;

# 15 Faculty sorted by Designation

  sql
SELECT *
FROM Faculty
ORDER BY Designation ASC;

# 16 Courses sorted by Credits DESC

  sql
SELECT *
FROM Course
ORDER BY Credits DESC;

# 17 First 3 students

(SQL*Plus / Oracle syntax)

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
Name,
TRUNC(MONTHS_BETWEEN(SYSDATE, DateOfBir)/12) AS Age
FROM Student;

# 20 CourseName with Credits + 1
sql
SELECT 
CourseName,
Credits + 1 AS Updated_Credits
FROM Course;

# 21 Enrollment with Final_Grade column

sql
SELECT 
EnrollmentID,
StudentID,
CourseID,
Semester,
Grade AS Final_Grade
FROM Enrollment;

# 22 Student name with Birth Year

sql
SELECT 
Name,
EXTRACT(YEAR FROM DateOfBir) AS Birth_Year
FROM Student;

# 23 Faculty name with Email Domain

  sql
SELECT 
Name,
SUBSTR(Email, INSTR(Email,'@')+1) AS Email_Domain
FROM Faculty;


  
