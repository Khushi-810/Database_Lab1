# 📚 Database Design Assignment – College Database

## 🎯 Objective

This assignment focuses on understanding:

* Entity–Relationship (**ER**) Modeling
* Converting ER models into **Relational Schema**
* Implementing the schema using **SQL**

The goal is to design a structured and normalized **College Database System**.

---

## 🏛 Problem Description

The database models a simplified college environment consisting of:

* Departments
* Students
* Faculty Members
* Courses
* Enrollments

Each component is represented using entities, attributes, and relationships.

---

## 🧩 Entities & Concepts

### **1. Department**

Represents an academic unit (e.g., CSE, ECE).

**Attributes:**

* `department_id` (**Primary Key**)
* `department_name`
* `office_location`

**Relationships:**

* One department → Many students
* One department → Many faculty members
* One department → Many courses

---

### **2. Student**

Represents a student enrolled in the college.

**Attributes:**

* `student_id` (**Primary Key**)
* `name`
* `date_of_birth`
* `gender`
* `contact_number`
* `department_id` (**Foreign Key**)

**Relationships:**

* Each student belongs to **one department**
* A student can enroll in **multiple courses**

---

### **3. Faculty**

Represents a faculty member.

**Attributes:**

* `faculty_id` (**Primary Key**)
* `name`
* `designation`
* `email`
* `department_id` (**Foreign Key**)

**Relationships:**

* Each faculty works in **one department**
* A faculty member can teach **multiple courses**

---

### **4. Course**

Represents a subject offered by a department.

**Attributes:**

* `course_id` (**Primary Key**)
* `course_name`
* `credits`
* `department_id` (**Foreign Key**)
* `faculty_id` (**Foreign Key**)

**Relationships:**

* Each course belongs to **one department**
* Each course is taught by **one faculty member**
* Many students can enroll in a course

---

### **5. Enrollment**

Represents the **many-to-many relationship** between Students and Courses.

**Attributes:**

* `student_id` (**Composite Primary Key, FK**)
* `course_id` (**Composite Primary Key, FK**)
* `semester`
* `grade`

**Purpose:**

* Resolves Student ↔ Course (**M:N**) relationship
* Stores academic performance details

---

## 📊 Part A – ER Diagram

An ER diagram was created using **draw.io (diagrams.net)**.

The diagram includes:

✔ Entities
✔ Primary Keys
✔ Relationships
✔ Cardinality (1:M, M:N)

📎 **Diagram File:**
`/ER_Diagram.png`

---

## 🗂 Part B – Relational Schema

The ER model is converted into relational tables:

| Table          | Description                          |
| -------------- | ------------------------------------ |
| **Department** | Stores department details            |
| **Student**    | Stores student data                  |
| **Faculty**    | Stores faculty data                  |
| **Course**     | Stores course data                   |
| **Enrollment** | Resolves Student–Course relationship |

---

## 🛠 Part C – SQL Implementation

SQL schema definition using **CREATE TABLE** statements.

Includes:

✔ Data Types
✔ Primary Key Constraints
✔ Foreign Key Constraints
✔ Composite Keys

📎 **SQL File:**
`/schema.sql`

---

## ✅ Submission Artifacts

This repository contains:

* ✔ ER Diagram Image
* ✔ SQL Schema File
* ✔ Documentation (README)

---

## 🚀 Tools Used

* **ER Diagram:** draw.io / diagrams.net
* **Database Language:** SQL
* **Version Control:** Git & GitHub

---

## 📌 Key Learning Outcomes

* Designing ER models
* Mapping ER → Relational Schema
* Implementing constraints in SQL
* Understanding normalization concepts

---

## 👨‍💻 Author

**Khushi Kumari**
B.Tech – Computer Science & Engineering



Just tell me.
