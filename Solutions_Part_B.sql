/* 
   DB-Lab-1 – Part B (DML)
    */

/* Ensure Database Selected */
USE CollegeDB;

/* 9. Insert 5 Student Records */
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES
(101, 'Rahul',  'CSE', 21, '9876543210', 'Delhi', 5),
(102, 'Amit',   'ECE', 19, '9123456780', 'Mumbai', 3),
(103, 'Neha',   'CSE', 22, '9988776655', 'Pune', 6),
(104, 'Priya',  'IT',  20, '9090909090', 'Chennai', 4),
(105, 'Karan',  'ME',  23, '9345678901', 'Bangalore', 7);

/* 10. Display All Records */
SELECT * FROM Student;

/* 11. Display RollNo & Name */
SELECT RollNo, Name FROM Student;

/* 12. Students from CSE */
SELECT * FROM Student
WHERE Dept = 'CSE';

/* 13. Age Greater Than 20 */
SELECT * FROM Student
WHERE Age > 20;

/* 14. Update Dept of RollNo 101 */
UPDATE Student
SET Dept = 'ECE'
WHERE RollNo = 101;

/* 15. Update City of Rahul */
UPDATE Student
SET City = 'Patna'
WHERE Name = 'Rahul';

/* 16. Increase Age by 1 */
UPDATE Student
SET Age = Age + 1;

/* 17. Delete RollNo 105 */
DELETE FROM Student
WHERE RollNo = 105;

/* 18. Delete All Records (Keep Table) */
DELETE FROM Student;
