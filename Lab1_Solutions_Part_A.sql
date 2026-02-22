/* 
   DB-Lab-1 – Part A (DDL)
   */

/* 1. Create Database */
CREATE DATABASE CollegeDB;

/* 2. Use Database */
USE CollegeDB;

/* 3. Create Student Table */
CREATE TABLE Stud1(
    RollNo NUMBER,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age NUMBER,
    Phone VARCHAR2(15)
);

Table created.

DESC Stud1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 PHONE                                              VARCHAR2(15)

/* 4. Create Course Table */
CREATE TABLE Course1 (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

Table created.
 DESC course1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

/* 5. Add City Column */
ALTER TABLE Stud1
ADD City VARCHAR2(50);

Table altered.

DESC Stud1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
/* 6. Add Semester Column */
ALTER TABLE Stud1
ADD Semester NUMBER;

Table altered.

DESC Stud1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER

/* 7. Rename Column Phone to MobileNo */
ALTER TABLE Stud1
RENAME COLUMN Phone TO MobileNo;

Table altered.

DESC Stud1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER

/* 8. Drop Course Table */
DROP TABLE Course;
