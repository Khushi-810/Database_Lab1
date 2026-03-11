
# College Database – Data Collection and Data Insertion (SQL Lab)

## 📚 Lab Overview

This lab demonstrates **data collection and insertion into a relational database** using SQL. The database represents a **College Management System** for **B. P. Mandal College of Engineering, Madhepura, Bihar**.

The objective of this lab is to understand how real-world institutional data can be structured, inserted, and verified in a relational database using SQL queries.

---

# 🎯 Objective

* Understand real-world **data collection and database population**
* Practice writing **SQL INSERT queries**
* Maintain **Primary Key and Foreign Key constraints**
* Populate a relational schema with **valid and consistent data**

---

# 🏫 Database Schema

The database consists of the following tables:

1. **Department**
2. **Faculty**
3. **Course**
4. **Student**
5. **Enrollment**

These tables represent the academic structure of the college.

---

# 🗂️ Tables Description

## 1️⃣ Department Table

Stores information about academic departments.

| Column          | Description             |
| --------------- | ----------------------- |
| Dept_ID         | Unique Department ID    |
| Dept_Name       | Name of the Department  |
| Office_Location | Department office/block |

Example Data:

| Dept_ID | Dept_Name                                 | Office_Location |
| ------- | ----------------------------------------- | --------------- |
| 1       | Computer Science and Engineering          | Block A         |
| 2       | Electrical Engineering                    | Block B         |
| 3       | Mechanical Engineering                    | Block C         |
| 4       | Electronics and Communication Engineering | Block D         |
| 5       | Civil Engineering                         | Block E         |

---

## 2️⃣ Faculty Table

Stores details of faculty members.

| Column        | Description               |
| ------------- | ------------------------- |
| Faculty_ID    | Unique faculty identifier |
| Name          | Faculty name              |
| Designation   | Faculty role              |
| Email         | Official email            |
| Department_ID | Department reference      |

Example:

| Faculty_ID | Name                    | Designation | Department |
| ---------- | ----------------------- | ----------- | ---------- |
| 101        | Dr M P Singh            | Professor   | 1          |
| 102        | Mithilesh Kumar         | Professor   | 2          |
| 103        | Dr Ajay Giri            | Professor   | 3          |
| 104        | Prof Ashish Kumar Suman | Professor   | 4          |

---

## 3️⃣ Course Table

Contains information about courses offered.

| Column        | Description                 |
| ------------- | --------------------------- |
| Course_ID     | Unique course identifier    |
| Course_Name   | Course title                |
| Credits       | Credit value                |
| Department_ID | Associated department       |
| Faculty_ID    | Faculty teaching the course |

Example:

| Course_ID | Course_Name                | Credits |
| --------- | -------------------------- | ------- |
| 203       | Database Management System | 4       |
| 205       | Advanced Java              | 4       |
| 208       | Digital Signal Processing  | 4       |
| 210       | Cloud Computing            | 4       |

---

## 4️⃣ Student Table

Stores student information.

| Column        | Description          |
| ------------- | -------------------- |
| Student_ID    | Unique student ID    |
| Name          | Student name         |
| Gender        | Gender               |
| DateOfBirth   | DOB                  |
| ContactNumber | Dummy contact number |
| Department_ID | Department reference |

Example:

| Student_ID | Name    | Gender | Department |
| ---------- | ------- | ------ | ---------- |
| 1          | Nidhi   | Female | 1          |
| 5          | Puja    | Male   | 5          |
| 8          | Rahul   | Male   | 8          |
| 10         | Shubham | Male   | 10         |


## 5️⃣ Enrollment Table

Represents student enrollment in courses.

| Column        | Description          |
| ------------- | -------------------- |
| Enrollment_ID | Unique enrollment ID |
| Student_ID    | Student reference    |
| Course_ID     | Course reference     |
| Semester      | Semester             |
| Grade         | Obtained grade       |

Example:

| Enrollment_ID | Student_ID | Course_ID | Semester | Grade |
| ------------- | ---------- | --------- | -------- | ----- |
| 1             | 1          | 203       | Sem-5    | A     |
| 5             | 5          | 205       | Sem-5    | A+    |
| 8             | 8          | 208       | Sem-4    | A     |
| 10            | 10         | 210       | Sem-6    | B+    |

---

# 📊 Data Insertion Summary

Minimum **10 records** were inserted in each major table.

| Table      | Records |
| ---------- | ------- |
| Department | 10      |
| Faculty    | 10      |
| Course     | 10      |
| Student    | 10      |
| Enrollment | 10      |

All records satisfy:

* ✅ Primary Key constraints
* ✅ Foreign Key relationships
* ✅ Data consistency

---

# 🧪 SQL Operations Performed

### Table Creation

```sql
CREATE TABLE Department(
Dept_ID VARCHAR(10) PRIMARY KEY,
Dept_Name VARCHAR(100) NOT NULL,
Office_Location VARCHAR(100)
);
```

### Data Insertion

Example:

```sql
INSERT INTO Department VALUES('1','Computer Science and Engineering','Block A');
```

### Data Verification

Example:

```sql
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
SELECT * FROM Enrollment;
```

---

# 📖 Data Sources

Data was collected from:

* **Official College Website**
* **Department Faculty Lists**
* **Course Curriculum / Syllabus**
* **Academic Assumptions for Grades**

Institution:

**B. P. Mandal College of Engineering**
Madhepura, Bihar, India

---

# 🧑‍💻 Author

**Khushi Kumari**
B.Tech CSE (AI & ML)
