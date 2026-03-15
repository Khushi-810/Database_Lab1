# Part-A 

SQL> SELECT * FROM Department;
SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN  department_id FORMAT A10;
SQL> COLUMN department_name FORMAT A40;
SQL> COLUMN office_location FORMAT A20;

SQL> INSERT INTO Department VALUES (1,'Computer Science and Engineering','Block A');
1 row created.

SQL> INSERT INTO Department VALUES (2,'Electrical Engineering','Block B');
1 row created.

SQL> INSERT INTO Department VALUES (3,'Mechanical Engineering','Block C');
1 row created.

SQL> INSERT INTO Department VALUES (4,'Electronics and Communication Engineering','Block D');
1 row created.

SQL> INSERT INTO Department VALUES (5,'Civil Engineering','Block E');
1 row created.

SQL> INSERT INTO Department VALUES (6,'Electrical and Electronics Engineering','Block F');
1 row created.

SQL> INSERT INTO Department VALUES (7,'3D Animation and Graphics','Block G');
1 row created.

SQL> INSERT INTO Department VALUES (8,'Computer Science Engineering (AI)','Block H');
1 row created.

SQL> INSERT INTO Department VALUES (9,'Civil Engineering with Computer Application','Block I');
1 row created.

SQL> INSERT INTO Department VALUES (10,'IT','Block J');
1 row created.


SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN faculty_id FORMAT A10;
SQL> COLUMN faculty_Name FORMAT A25;
SQL> COLUMN designation FORMAT A15;
SQL> COLUMN email FORMAT A30;
SQL> COLUMN department_id FORMAT A10;
SQL> SET WRAP OFF;
SQL> SELECT * FROM Faculty;

SQL> INSERT INTO Faculty VALUES (101,'Dr M P Singh','Professor','mp.singh@bpmce.ac.in',1);
1 row created.

SQL> INSERT INTO Faculty VALUES (102,'Mithilesh Kumar','Assistant Professor','mithilesh.kumar@bpmce.ac.in',2);
1 row created.

SQL> INSERT INTO Faculty VALUES (103,'Dr Ajay Giri','Professor','ajay.giri@bpmce.ac.in',3);
1 row created.

SQL> INSERT INTO Faculty VALUES (104,'Prof Ashish Kumar Suman','Professor','ashish.kumar@bpmce.ac.in',4);
1 row created.

SQL> INSERT INTO Faculty VALUES (105,'Vicky Anand','Professor','vicky.anand@bpmce.ac.in',5);
1 row created.

SQL> INSERT INTO Faculty VALUES (106,'Dr Ajay Kumar','Assistant Professor','dr.ajay.kumar@bpmce.ac.in',6);
1 row created.

SQL> INSERT INTO Faculty VALUES (107,'Dr Prity Kumari Choudhary','Professor','dr.priti.kumari@bpmce.ac.in',7);
1 row created.

SQL> INSERT INTO Faculty VALUES (108,'Puja Rani','Professor','puja.rani@bpmce.ac.in',8);
1 row created.

SQL> INSERT INTO Faculty VALUES (109,'Pankaj Kumar','Professor','pankaj.kumar@bpmce.ac.in',9);
1 row created.

SQL> INSERT INTO Faculty VALUES (110,'Arun Kumar','Professor','arun.kumar@bpmce.ac.in',10);
1 row created.


SQL> SELECT * FROM Course;

SQL> INSERT INTO Course VALUES (201,'Thermodynamics',4,3,103);
1 row created.

SQL> INSERT INTO Course VALUES (202,'Digital Electronics',4,4,104);
1 row created.

SQL> INSERT INTO Course VALUES (203,'Database Management System',4,1,101);
1 row created.

SQL> INSERT INTO Course VALUES (204,'Power System',3,3,104);
1 row created.

SQL> INSERT INTO Course VALUES (205,'Advanced Java',4,1,105);
1 row created.

SQL> INSERT INTO Course VALUES (206,'Microprocessor',3,2,106);
1 row created.

SQL> INSERT INTO Course VALUES (207,'Thermal Engineering',4,3,107);
1 row created.

SQL> INSERT INTO Course VALUES (208,'Digital Signal Processing',4,4,108);
1 row created.

SQL> INSERT INTO Course VALUES (209,'Structural Engineering',3,9,109);
1 row created.

SQL> INSERT INTO Course VALUES (210,'Cloud Computing',4,10,110);
1 row created.


SQL> SELECT * FROM Student;

SQL> INSERT INTO Student VALUES (1,'Nidhi','19-NOV-2004','Female','9XXXXXXX01',1);
1 row created.
  
SQL> INSERT INTO Student VALUES (2,'Milli','11-FEB-2006','Female','96XXXXXX01',2);
1 row created.
  
SQL> INSERT INTO Student VALUES (3,'Mona','11-FEB-2004','Female','90XXXXXX06',3);
1 row created.
  
SQL> INSERT INTO Student VALUES (4,'Jyoti','05-MAR-2004','Female','90XXXXXX07',4);
1 row created.
  
SQL> INSERT INTO Student VALUES (5,'Puja','02-JAN-2002','Male','90XXXXXX09',5);
1 row created.
  
SQL> INSERT INTO Student VALUES (6,'Aniket','17-JUL-2002','Male','99XXXXXX79',6);
1 row created.
  
SQL> INSERT INTO Student VALUES (7,'Pankaj','20-MAY-2003','Male','80XXXXXX79',7);
1 row created.
  
SQL> INSERT INTO Student VALUES (8,'Rahul','19-NOV-2004','Male','77XXXXXX90',8);
1 row created.
  
SQL> INSERT INTO Student VALUES (9,'Raman','10-DEC-2003','Male','80XXXXXX12',9);
1 row created.
  
SQL> INSERT INTO Student VALUES (10,'Shubham','03-APR-2002','Male','97XXXXXX62',10);
1 row created.


SQL> SELECT * FROM Enrollment;

SQL> INSERT INTO Enrollment VALUES (1,203,'Sem-5','A');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (2,201,'Sem-5','A');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (3,202,'Sem-5','B+');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (4,204,'Sem-5','B');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (5,205,'Sem-5','A+');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (6,206,'Sem-3','A+');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (7,207,'Sem-4','B+');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (8,208,'Sem-4','A');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (9,209,'Sem-3','B');
1 row created.
  
SQL> INSERT INTO Enrollment VALUES (10,210,'Sem-6','B+');
1 row created.

# Part-B
  
SQL> SELECT * FROM Department;

DEPARTMENTID DEPARTMENTNAME                                     OFFICELOCATION
------------ -------------------------------------------------- --------------------------------------------------
           1 Computer Science and Engineering                   Block A
           2 Electrical Engineering                             Block B
           3 Mechanical Engineering                             Block C
           4 Electronics and Communication Engineering          Block D
           5 Civil Engineering                                  Block E
           6 Electrical and Electronics  Engineering            Block F
           7 3D Animation and Graphics                          Block G
           8 COMPUTER SCIENCE ENGINEERING(AI )                  Block H
           9 CIVIL ENGINEERING with COMPUTER APPLICATION        Block I
          10 IT                                                 Block J

10 rows selected.  

  
SQL> SELECT * FROM Faculty;

 FACULTYID NAME                                               DESIGNATION     EMAIL                          DEPARTMENTID
---------- -------------------------------------------------- --------------- ------------------------------ ------------
       101 Dr M P Singh                                       Professor       mp.singh@bpmce.ac.in                      1
       102 MITHILESH KUMAR                                    Professor       mithilesh.kumar@bpmce.ac.in               2
       103 Dr Ajay Giri                                       Professor       ajay.giri@bpmce.ac.in                     3
       104 Prof Ashish Kumar Suman                            Professor       ashish.kumar@bpmce.ac.in                  4
       105 VICKY ANAND                                        Professor       vicky.anand@bpmce.ac.in                   5
       106 Dr AJAY KUMAR                                      Professor       Dr.ajay.kumar@bpmce.ac.in                 6
       107 Dr Prity Kumari Choudhary                          Professor       Dr.Priti.kumari@bpmce.ac.in               7
       108 Puja Rani                                          Professor       Puja.rani@bpmce.ac.in                     8
       109 Pankaj Kumar                                       Professor       Pankaj.kumar@bpmce.ac.in                  9
       110 Arun Kumar                                         Professor       Arun.kumar@bpmce.ac.in                   10

10 rows selected.

   
SQL> SELECT * FROM Course;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       204 Power System                                                3            3        104
       205 Advanced Java                                               4            1        105
       206 Microprocessor                                              3            2        106
       207 Thermal Engineering                                         4            3        107
       208 Digital Signal Processing                                   4            4        108
       209 Structural Engineering                                      3            9        109
       210 Cloud Computing                                             4           10        110

  10 rows selected.

    
SQL> SELECT * FROM Student;

 STUDENTID NAME                                               GENDER     DATEOFBIR CONTACTNUMBER   DEPARTMENTID
---------- -------------------------------------------------- ---------- --------- --------------- ------------
         1 Nidhi                                              Female     19-NOV-04 9XXXXXXX01                 1
         2 Milli                                              Female     11-FEB-06 96XXXXXX01                 2
         3 Mona                                               Female     11-FEB-04 90XXXXXX06                 3
         4 Jyoti                                              Female     05-MAR-04 90XXXXXX07                 4
         5 Puja                                               Male       02-JAN-02 90XXXXXX09                 5
         6 Aniket                                             Male       17-JUL-02 99XXXXXX79                 6
         7 Pankaj                                             Male       20-MAY-03 80XXXXXX79                 7
         8 Rahul                                              Male       19-NOV-04 77XXXXXX90                 8
         9 Raman                                              Male       10-DEC-03 80XXXXXX12                 9
        10 Shubham                                            Male       03-APR-02 97XXXXXX62                10

10 rows selected.

   
SQL> SELECT * FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEMESTER             GRADE
------------ ---------- ---------- -------------------- -----
           1          1        203 Sem-5                A
           2          2        201 Sem-5                A
           3          3        202 Sem-5                B+
           4          4        204 Sem-5                B
           5          5        205 Sem-5                A+
           6          6        206 Sem-3                A+
           7          7        207 Sem-4                B+
           8          8        208 Sem-4                A
           9          9        209 Sem-3                B
          10         10        210 Sem-6                B+

10 rows selected.
