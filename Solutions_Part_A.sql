/* 
   DB-Lab-1 – Part A (DDL)
   */

/* 1. Create Database */
CREATE DATABASE CollegeDB;

/* 2. Use Database */
USE CollegeDB;

/* 3. Create Student Table */
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

/* 4. Create Course Table */
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

/* 5. Add City Column */
ALTER TABLE Student
ADD City VARCHAR(50);

/* 6. Add Semester Column */
ALTER TABLE Student
ADD Semester INT;

/* 7. Rename Column Phone to MobileNo */

ALTER TABLE Student
RENAME COLUMN Phone TO MobileNo;

/* 8. Drop Course Table */
DROP TABLE Course;
