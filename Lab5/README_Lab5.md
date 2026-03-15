# DBMS Lab 5 – Data Retrieval from Multiple Tables using JOIN

## 📌 Aim

To perform **data retrieval from multiple tables using SQL JOIN operations** in Oracle SQL*Plus.

---

## 🧠 Objective

The objective of this lab is to understand how relational databases combine data stored in different tables using **JOIN operations**. By using JOINs, meaningful information can be extracted from related tables such as **Student, Course, Faculty, Department, and Enrollment**.

---

## 🗄️ Database Schema Used

The following tables are used in this lab:

1. **Department**
2. **Student**
3. **Faculty**
4. **Course**
5. **Enrollment**

These tables represent a simple **College Database Management System**.

---

## 📊 Tables Description

### 1️⃣ Department

| Column          | Description                |
| --------------- | -------------------------- |
| department_id   | Unique ID of department    |
| department_name | Name of department         |
| office_location | Department office location |

---

### 2️⃣ Student

| Column         | Description          |
| -------------- | -------------------- |
| student_id     | Unique student ID    |
| name           | Student name         |
| date_of_birth  | Date of birth        |
| gender         | Student gender       |
| contact_number | Phone number         |
| department_id  | Department reference |

---

### 3️⃣ Faculty

| Column        | Description          |
| ------------- | -------------------- |
| faculty_id    | Unique faculty ID    |
| name          | Faculty name         |
| designation   | Faculty designation  |
| email         | Faculty email        |
| department_id | Department reference |

---

### 4️⃣ Course

| Column        | Description                 |
| ------------- | --------------------------- |
| course_id     | Unique course ID            |
| course_name   | Course title                |
| credits       | Course credits              |
| department_id | Department reference        |
| faculty_id    | Faculty teaching the course |

---

### 5️⃣ Enrollment

| Column     | Description       |
| ---------- | ----------------- |
| student_id | Student reference |
| course_id  | Course reference  |
| semester   | Semester enrolled |
| grade      | Grade obtained    |

---

## 🔗 SQL JOIN Operations Used

The following **INNER JOIN queries** were performed in this lab:

1. Retrieve student ID, name, and enrolled course.
2. Display student name and semester.
3. Display student name and grade obtained.
4. Display course name with faculty teaching it.
5. Find courses taught by a specific faculty member.
6. Display faculty name, designation, and course taught.
7. Display student name with enrolled course name.
8. Retrieve student name, course, and semester.
9. Display students enrolled in a specific semester.
10. Find courses taken by a particular student.
11. Display student name, department, and course name.
12. Retrieve department-wise list of courses.
13. Display faculty name with department name.
14. Find students and courses belonging to a specific department.
15. Sort student-course results alphabetically.
16. Sort faculty-course results based on course credits.
17. Count number of students enrolled in each course.
18. Count number of courses taught by each faculty.
19. Display department-wise student count.
20. Retrieve course with highest grade awarded.

---

## 🖥️ Tools Used

* **Oracle SQL*Plus**
* **SQL (Structured Query Language)**
* **GitHub** for version control

---

## ▶️ How to Run the SQL Script

1. Open **SQL*Plus**.
2. Connect to your database.

```sql
sqlplus username/password
```

3. Run the lab script.

```sql
@Lab5_Solutions.sql
```

## 🎯 Learning Outcome

After completing this lab, the following concepts were understood:

* Relational database table relationships
* Usage of **INNER JOIN**
* Retrieving related data from multiple tables
* Sorting and filtering joined results
* Performing aggregate operations with JOIN

---

## 👨‍💻 Author

**Khushi Kumari**
B.Tech – Computer Science Engineering (AI & ML)

---
