SQL> Create table Studentss(StudentID int PRIMARY KEY, Name varchar(30), Age int);

Table created.

SQL> Insert into Studentss values(1,'Alice', 20);

1 row created.

SQL> Insert into Studentss values(2,'Bob', 22);

1 row created.

SQL> Insert into Studentss values(3,'Charlie', 21);

1 row created.

SQL> Insert into Studentss values(4,'David', 19);

1 row created.

SQL>  Create table Course10 (CourseID int PRIMARY KEY, CourseName varchar(20));

Table created.

SQL> Insert into Course10 values (101, 'Database Management');

1 row created.

SQL> Insert into Course10 values (102, 'Algorithms');

1 row created.

SQL> Insert into Course10 values (103, 'Web Development');

1 row created.

SQL> Create table Enrollments10 (StudentID int REFERENCES Studentss(StudentID), CourseID int REFERENCES Course10(CourseID));

Table created.

SQL> Insert into Enrollments10 values(1,101);

1 row created.

SQL> Insert into Enrollments10 values(1,102);

1 row created.

SQL> Insert into Enrollments10 values(2,102);

1 row created.

SQL> Insert into Enrollments10 values(3,101);

1 row created.

SQL> Insert into Enrollments10 values(3,103);

1 row created.

SQL> SELECT * FROM Student;

 STUDENTID NAME                                  AGE                            
---------- ------------------------------ ----------                            
         1 Alice                                  20                            
         2 Bob                                    20                            
         3 Charlie                                21                            
         4 David                                  19                            
                                   

SQL> SELECT * FROM Studentss;

 STUDENTID NAME                                  AGE                            
---------- ------------------------------ ----------                            
         1 Alice                                  20                            
         2 Bob                                    22                            
         3 Charlie                                21                            
         4 David                                  19                            

SQL> SELECT Name, Age FROM Studentss WHERE Age > 20;

NAME                                  AGE                                       
------------------------------ ----------                                       
Bob                                    22                                       
Charlie                                21                                       


SQL> SELECT Name FROM Studentss WHERE StudentID IN (SELECT StudentID FROM Enrollments10 WHERE CourseID = (SELECT CourseID FROM Course10 WHERE CourseName = 'Database Management'));

NAME                                                                            
------------------------------                                                  
Alice                                                                           
Charlie                                                                         

SQL> SELECT CourseID, CourseName FROM Course10 WHERE CourseID IN ( SELECT CourseID FROM Enrollments10 GROUP BY CourseID HAVING COUNT(*) > 1 );

  COURSEID COURSENAME                                                           
---------- --------------------                                                 
       101 Database Management                                                  
       102 Algorithms                                                           

SQL> SELECT AVG(Age) AS AverageAge FROM Studentss;

AVERAGEAGE                                                                      
----------                                                                      
      20.5                                                                      

SQL> SELECT Name, Age FROM Studentss WHERE Age > (SELECT AVG(Age) FROM Studentss);

NAME                                  AGE                                       
------------------------------ ----------                                       
Bob                                    22                                       
Charlie                                21                                       


