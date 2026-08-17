SQL> CREATE SEQUENCE stud24_seq START WITH 1 INCREMENT BY 1;

Sequence created.

SQL>  CREATE TABLE stud18 (student_id INT PRIMARY KEY, student_name VARCHAR(100), student_email VARCHAR(100));

Table created.

SQL>  INSERT INTO stud18 (student_id, student_name, student_email) VALUES (student_seq.NEXTVAL, 'Alice Johnson', 'alice@example.com');

1 row created.

SQL> INSERT INTO stud18 (student_id, student_name, student_email) VALUES (student_seq.NEXTVAL, 'Bob Smith', 'bob@example.com');

1 row created.

SQL> INSERT INTO stud18 (student_id, student_name, student_email) VALUES (student_seq.NEXTVAL, 'Charlie Brown', 'charlie@example.com');

1 row created.

SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, student_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, student_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STUDENT_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, stud_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, stud_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STUD_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, stud24_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, stud24_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STUD24_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, student24_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, student24_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STUDENT24_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, stu24_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, stu24_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STU24_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, stude30_email FROM students;
CREATE VIEW stude18_view AS SELECT student_id, student_name, stude30_email FROM students
                                                             *
ERROR at line 1:
ORA-00904: "STUDE30_EMAIL": invalid identifier 


SQL> CREATE VIEW stude18_view AS SELECT student_id, student_name, student_email FROM stud18;

View created.

SQL> INSERT INTO stud18 (student_id, student_name, student_email) VALUES (student_seq.NEXTVAL, 'Diana Prince', 'diana@example.com');

1 row created.

SQL> UPDATE stud18 SET student_email = 'new_bob@example.com' WHERE student_name = 'Bob Smith';

1 row updated.

SQL> DELETE FROM stud18 WHERE student_name = 'Charlie Brown';

1 row deleted.

SQL> SELECT * FROM stud18_view;
SELECT * FROM stud18_view
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM stude18_view;

STUDENT_ID                                                                      
----------                                                                      
STUDENT_NAME                                                                    
--------------------------------------------------------------------------------
STUDENT_EMAIL                                                                   
--------------------------------------------------------------------------------
        61                                                                      
Alice Johnson                                                                   
alice@example.com                                                               
                                                                                
        62                                                                      
Bob Smith                                                                       
new_bob@example.com                                                             

STUDENT_ID                                                                      
----------                                                                      
STUDENT_NAME                                                                    
--------------------------------------------------------------------------------
STUDENT_EMAIL                                                                   
--------------------------------------------------------------------------------
                                                                                
        64                                                                      
Diana Prince                                                                    
diana@example.com                                                               
                                                                                

SQL> SPOOL OFF;
