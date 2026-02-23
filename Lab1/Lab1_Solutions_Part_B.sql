/* 
   DB-Lab-1 – Part B (DML)
    */

/* 9. Insert 5 Student Records */


INSERT INTO Stud1 (RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES (101, 'Rahul', 'CSE', 21, '9876543210', 'Delhi', 5);

1 row created.

INSERT INTO Stud1 VALUES (102, 'Amit', 'ECE', 19, '9123456780', 'Mumbai', 3);

1 row created.

INSERT INTO Stud1 VALUES (103, 'Neha', 'CSE', 22, '9988776655', 'Pune', 6);

1 row created.

INSERT INTO Stud1 VALUES (104, 'Priya', 'IT', 20, '9090909090', 'Chennai', 4);

1 row created.

INSERT INTO Stud1 VALUES (105, 'Karan', 'ME', 23, '9345678901', 'Bangalore', 7);

1 row created.

/* 10. Display All Records */
SELECT * FROM Stud1;

 SET LINESIZE 200
 SET LINESIZE 100
    
SELECT* FROM Stud1;

    ROLLNO NAME                                               DEPT           AGE
---------- -------------------------------------------------- -------------------- ----------
MOBILENO        CITY                                                 SEMESTER
--------------- -------------------------------------------------- ----------
       101 Rahul                                              CSE             21
9876543210      Delhi                                                       5

       101 Rahul                                              CSE             21
9876543210      Delhi                                                       5

       102 Amit                                               ECE             19
9123456780      Mumbai                                                      3


    ROLLNO NAME                                               DEPT           AGE
---------- -------------------------------------------------- -------------------- ----------
MOBILENO        CITY                                                 SEMESTER
--------------- -------------------------------------------------- ----------
       103 Neha                                               CSE             22
9988776655      Pune                                                        6

       104 Priya                                              IT              20
9090909090      Chennai                                                     4

       105 Karan                                              ME              23
9345678901      Bangalore                                                   7


6 rows selected.


/* 11. Display RollNo & Name */
SELECT RollNo, Name FROM Stud1;

RollNo, Name FROM Stud1;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Rahul
       102 Amit
       103 Neha
       104 Priya
       105 Karan
       
/* 12. Students from CSE */
       
SELECT * FROM Stud1
WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
       101 Rahul
CSE                          21 9876543210
Patna                                                       5

       103 Neha
CSE                          22 9988776655
Pune                                                        6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
]
/* 13. Age Greater Than 20 */
       
SELECT * FROM Stud1
WHERE Age > 20;

ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------
       101 Rahul
CSE                          21 9876543210
Delhi                                                       5

       103 Neha
CSE                          22 9988776655
Pune                                                        6

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                                 SEMESTER
-------------------------------------------------- ----------

       105 Karan
ME                           23 9345678901
Bangalore                                                   7


/* 14. Update Dept of RollNo 101 */
   
UPDATE Stud1
SET Dept = 'ECE'
WHERE RollNo = 101;   

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER

/* 15. Update City of Rahul */

UPDATE Stud1
SET City = 'Patna'
WHERE Name = 'Rahul';

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
    
/* 16. Increase Age by 1 */

UPDATE Stud1
SET Age = Age + 1;   

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER

/* 17. Delete RollNo 105 */
DELETE FROM Stud1
WHERE RollNo = 105;

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           NUMBER

/* 18. Delete All Records (Keep Table) */
DELETE FROM Stud1;
