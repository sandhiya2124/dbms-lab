create table customer(id INT PRIMARY KEY,name VARCHAR(100),age INT,address VARCHAR(100),salary INT);

Table created.

SQL> INSERT INTO customer VALUES(1,'ezhil',23,'aaa',20000);

1 row created.

SQL> INSERT INTO customer VALUES(2,'aarthi',24,'bbb',30000);

1 row created.

SQL> INSERT INTO customer VALUES(3,'sumathi',21,'ccc',35000);

1 row created.

SQL> INSERT INTO customer VALUES(4,'viji',24,'ddd',40000);

1 row created.

SQL> INSERT INTO customer VALUES(5,'priya',21,'eee',43000);

1 row created.

SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  c_id customer.id%type:=5;
  3  c_name customer.name%type;
  4  c_addr customer.address%type;
  5  BEGIN
  6  SELECT name, address INTO c_name, c_addr
  7  FROM customer where id=c_id;
  8  dbms_output.put_line('name:' || c_name);
  9  dbms_output.put_line('address:'|| c_addr);
 10  EXCEPTION
 11  WHEN no_data_found THEN
 12  dbms_output.put_line('no such customer!');
 13  WHEN others THEN
 14  dbms_output.put_line('error!');
 15  END;
 16  /
name:priya
address:eee

PL/SQL procedure successfully completed.
