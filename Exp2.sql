
SQL>  Create table Student10 (StudentID int, Name varchar(30), Age int);

Table created.

SQL> Create table Courses10 (CourseID int, CourseName varchar(20));

Table created.

SQL>  Create table Enrollment10 (EnrollmentID int, StudentID int, CourseID int, Grade varchar(5));

Table created.

SQL>  Insert into Student10 values(1,'Alice', 20);

1 row created.

SQL>  Insert into Courses10 values(101,'Database Management');

1 row created.

SQL> Insert into Enrollment10 values(1,1,101,'A');

1 row created.

SQL>  Insert into Student10 values(2,'Bob', 22);

1 row created.

SQL>  Insert into Courses10 values(102,'maths');

1 row created.

SQL> Insert into Enrollment10 values(2,1,102,'B');

1 row created.

SQL>  Insert into Student10 values(2,'Charlie', 21);

1 row created.

SQL>  Insert into Courses10 values(102,'english');

1 row created.

SQL> Insert into Enrollment10 values(3,1,103,'c');

1 row created.

SQL> SELECT Student10.StudentID, Student10.Name, Student10.Age, Courses10.CourseID,Courses10.CourseName, Enrollment10.Grade FROM Student10 INNER JOIN Enrollment10 ON Student10.StudentID = Enrollment10.StudentID INNER JOIN Courses10 ON Enrollment10.CourseID = Courses10.CourseID;

 STUDENTID NAME                                  AGE   COURSEID                 
---------- ------------------------------ ---------- ----------                 
COURSENAME           GRADE                                                      
-------------------- -----                                                      
         1 Alice                                  20        102                 
english              B                                                          
                                                                                
         1 Alice                                  20        102                 
maths                B                                                          
                                                                                
         1 Alice                                  20        101                 
Database Management  A                                                          
                                                                                

SQL> SELECT Student10.StudentID, Student10.Name, Student10.Age, Course10.CourseID, Course10.CourseName, Enrollment10.Grade FROM Student10 LEFT JOIN Enrollment10 ON Student10.StudentID = Enrollment10.StudentID LEFT JOIN Course10 ON Enrollment10.CourseID = Course10.CourseID;

 STUDENTID NAME                                  AGE   COURSEID                 
---------- ------------------------------ ---------- ----------                 
COURSENAME           GRADE                                                      
-------------------- -----                                                      
         1 Alice                                  20        101                 
Database Management  A                                                          
                                                                                
         1 Alice                                  20        102                 
Algorithms           B                                                          
                                                                                
         1 Alice                                  20        103                 
Web Development      c                                                          
                                                                                

 STUDENTID NAME                                  AGE   COURSEID                 
---------- ------------------------------ ---------- ----------                 
COURSENAME           GRADE                                                      
-------------------- -----                                                      
         2 Bob                                    22                            
                                                                                
                                                                                
         2 Charlie                                21                            
                                                                                
                                                                                

SQL> SELECT Student10.StudentID, Student10.Name, Student10.Age, Course10.CourseID,Course10.CourseName, Enrollment10.Grade FROM Course10 RIGHT JOIN Enrollment10 ON Course10.CourseID = Enrollment10.CourseID RIGHT JOIN Student10 ON Enrollment10.StudentID = Student10.StudentID;

 STUDENTID NAME                                  AGE   COURSEID                 
---------- ------------------------------ ---------- ----------                 
COURSENAME           GRADE                                                      
-------------------- -----                                                      
         1 Alice                                  20        101                 
Database Management  A                                                          
                                                                                
         1 Alice                                  20        102                 
Algorithms           B                                                          
                                                                                
         1 Alice                                  20        103                 
Web Development      c                                                          
                                                                                

 STUDENTID NAME                                  AGE   COURSEID                 
---------- ------------------------------ ---------- ----------                 
COURSENAME           GRADE                                                      
-------------------- -----                                                      
         2 Charlie                                21                            
                                                                                
                                                                                
         2 Bob                                    22                            
                                                                                
                                                                                

SQL> SPOOL OFF;
