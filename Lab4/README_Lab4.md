# DB Lab 4 – Data Retrieval Using SQL (Read-Only Queries)

## Objective

The objective of this lab is to understand and practice **retrieving and analyzing data from existing database tables** using SQL read-only queries. The lab focuses on:

* Displaying stored data from tables
* Using **column aliases**
* **Filtering** records using conditions
* **Sorting** results
* **Limiting** the number of rows displayed
* Generating **derived or computed outputs** without modifying stored data

All queries are executed using **Oracle SQL*Plus**.

---

# Database Tables Used

The database represents a **College Management System** containing the following tables:

| Table Name | Description                              |
| ---------- | ---------------------------------------- |
| Department | Stores department details                |
| Faculty    | Stores faculty member information        |
| Course     | Stores courses offered by departments    |
| Student    | Stores student information               |
| Enrollment | Stores student course enrollment details |

---

# Table Structure Overview

### Department

| Column         | Description              |
| -------------- | ------------------------ |
| DepartmentID   | Unique ID of department  |
| DepartmentName | Name of department       |
| OfficeLocation | Office building location |

---

### Faculty

| Column       | Description                         |
| ------------ | ----------------------------------- |
| FacultyID    | Unique faculty identifier           |
| Name         | Faculty name                        |
| Designation  | Faculty position                    |
| Email        | Faculty email address               |
| DepartmentID | Department to which faculty belongs |

---

### Course

| Column       | Description                    |
| ------------ | ------------------------------ |
| CourseID     | Unique course identifier       |
| CourseName   | Name of the course             |
| Credits      | Course credit value            |
| DepartmentID | Department offering the course |
| FacultyID    | Faculty teaching the course    |

---

### Student

| Column        | Description               |
| ------------- | ------------------------- |
| StudentID     | Unique student identifier |
| Name          | Student name              |
| Gender        | Student gender            |
| DateOfBir     | Date of birth             |
| ContactNumber | Student contact number    |
| DepartmentID  | Department of the student |

---

### Enrollment

| Column       | Description                  |
| ------------ | ---------------------------- |
| EnrollmentID | Unique enrollment identifier |
| StudentID    | Enrolled student             |
| CourseID     | Course enrolled              |
| Semester     | Semester of enrollment       |
| Grade        | Final grade obtained         |

---

# Lab Tasks

## Part A – Basic Data Display (Using Aliases)

The following tasks demonstrate how to retrieve data with **column aliases** for better readability.

1. Display all columns from the **Student** table using suitable aliases.
2. Display **StudentID, Name, DepartmentID** using aliases **Roll_No, Student_Name, Dept_ID**.
3. Display **FacultyID, Name, Designation, Email** with readable column names.
4. Display all columns from the **Course** table with renamed headers.
5. Display all columns from the **Enrollment** table using meaningful aliases.

---

## Part B – Conditional Data Display (WHERE Clause)

These tasks demonstrate filtering records using the **WHERE** clause.

6. Display students belonging to a specific department.
7. Display all **female students**.
8. Display faculty members with designation **Assistant Professor**.
9. Display faculty members belonging to a specific department.
10. Display courses with **credits greater than or equal to 4**.
11. Display students **born after 1 January 2003**.
12. Display enrollment records for **Semester 4**.

---

## Part C – Sorting and Limiting Results

These queries demonstrate **ordering and limiting data**.

13. Display student records sorted by **Name in ascending order**.
14. Display student records sorted by **Date of Birth in descending order**.
15. Display faculty records sorted by **Designation**.
16. Display courses sorted by **Credits in descending order**.
17. Display **only the first 3 student records**.
18. Display **only the first 5 course records**.

---

## Part D – Derived / Computed Output

These queries generate **calculated values without modifying the database**.

19. Display student **Name with calculated Age** from Date of Birth.
20. Display **CourseName with Credits + 1** as Updated_Credits.
21. Display enrollment details with **Grade renamed as Final_Grade**.
22. Display **Student Name with Birth Year extracted from DOB**.
23. Display **Faculty Name with Email Domain extracted from Email**.

---

# Key SQL Concepts Practiced

* `SELECT` statement for retrieving data
* `AS` keyword for **column aliasing**
* `WHERE` clause for **conditional filtering**
* `ORDER BY` for **sorting**
* `ROWNUM` for **limiting results**
* **Date functions** for calculating age
* **String functions** for extracting email domains
* **Computed columns** using arithmetic operations

---

# Tools Used

* **Oracle SQL*Plus**
* **SQL (Structured Query Language)**
* **Oracle Database**

---

# Learning Outcome

After completing this lab, students will be able to:

* Retrieve data from relational database tables
* Apply filtering conditions to extract specific data
* Sort query results for better analysis
* Generate computed information from stored data
* Use SQL queries to analyze database records effectively

---

# Author

**Khushi Kumari**
B.Tech – Computer Science Engineering (AI & ML)

---
