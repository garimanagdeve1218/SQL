/*CREATING THE COMPANY DATABASE*/

/*CREATING THE Employee TABLE*/

mysql> use company;
Database changed
mysql> CREATE TABLE employee (emp_id INT PRIMARY KEY,first_name VARCHAR(40),last_name VARCHAR(40),birth_date DATE,sex VARCHAR(1),salary INT,super_id INT,branch_id INT);
/*AS WE KNOW THAT-----> super_id table and the branch_id table ARE THE FOREIGN KEYS
I can't define the super_id and branch_id as foreign key just yet
because the super_id table and the branch_id table doesn't exist yet .. right now we are making it.*/

Query OK, 0 rows affected (0.11 sec)





/*CREATING THE Branch TABLE*/

 CREATE TABLE branch (branch_id INT PRIMARY KEY,branch_name VARCHAR(40),mgr_id INT,mgr_start_date DATE,FOREIGN KEY(mgr_id) REFERENCES employee(emp
_id) ON DELETE SET NULL);
/*to create a foreign key this is how we write.
WE CREATED THE FOREIGN KEY NOW BECAUSE NOW WE DO HAVE THE REFERENCE TO THE FOREIGN KEY.*/
  
Query OK, 0 rows affected (0.08 sec)





/*FOR MAKING super_id and emp_id the FOREIGN KEYS:*/  
  
mysql> ALTER TABLE employee
    -> ADD FOREIGN KEY(branch_id)
    -> REFERENCES branch(branch_id)
    -> ON DELETE SET NULL;

Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0
  

  
  
  
  
mysql> ALTER TABLE employee
    -> ADD FOREIGN KEY(super_id)
    -> REFERENCES employee(emp_id)
    -> ON DELETE SET NULL;

Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0





/*CREATING THE client TABLE*/

mysql> CREATE TABLE client (
    ->   client_id INT PRIMARY KEY,
    ->   client_name VARCHAR(40),
    ->   branch_id INT,
    ->   FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
    -> );

Query OK, 0 rows affected (0.06 sec)




/*CREATING THE works_with TABLE*/

 CREATE TABLE works_with (
    ->   emp_id INT,
    ->   client_id INT,
    ->   total_sales INT,
    ->   PRIMARY KEY(emp_id, client_id),
    ->   FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    ->   FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
    -> );

Query OK, 0 rows affected (0.07 sec)



/*CREATING THE  branch_supplier TABLE*/

mysql> CREATE TABLE branch_supplier (
    ->   branch_id INT,
    ->   supplier_name VARCHAR(40),
    ->   supply_type VARCHAR(40),
    ->   PRIMARY KEY(branch_id, supplier_name),
    ->   FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
    -> );

Query OK, 0 rows affected (0.06 sec)





/*inserting values for -- Corporate*/

mysql> INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);
Query OK, 1 row affected (0.14 sec)

mysql>
mysql> INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');
Query OK, 1 row affected (0.04 sec)

mysql>
mysql> UPDATE employee
    -> SET branch_id = 1
    -> WHERE emp_id = 100;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

Query OK, 1 row affected (0.01 sec)





/*inserting values for -- Scranton*/

INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);





/*inserting values for -- Stamford*/

INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);






/*inserting values for -- BRANCH SUPPLIER*/

INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');






/*inserting values for -- CLIENT*/

INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);






/*inserting values for -- WORKS_WITH*/

INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);





/*Let's see all the tables created: */

 select * from employee;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |      102 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+
9 rows in set (0.02 sec)





 select * from branch;

+-----------+-------------+--------+----------------+
| branch_id | branch_name | mgr_id | mgr_start_date |
+-----------+-------------+--------+----------------+
|         1 | Corporate   |    100 | 2006-02-09     |
|         2 | Scranton    |    102 | 1992-04-06     |
|         3 | Stamford    |    106 | 1998-02-13     |
+-----------+-------------+--------+----------------+
3 rows in set (0.00 sec)





mysql> select * from client;

+-----------+---------------------+-----------+
| client_id | client_name         | branch_id |
+-----------+---------------------+-----------+
|       400 | Dunmore Highschool  |         2 |
|       401 | Lackawana Country   |         2 |
|       402 | FedEx               |         3 |
|       403 | John Daly Law, LLC  |         3 |
|       404 | Scranton Whitepages |         2 |
|       405 | Times Newspaper     |         3 |
|       406 | FedEx               |         2 |
+-----------+---------------------+-----------+
7 rows in set (0.00 sec)





mysql> select * from works_with;

+--------+-----------+-------------+
| emp_id | client_id | total_sales |
+--------+-----------+-------------+
|    102 |       401 |      267000 |
|    102 |       406 |       15000 |
|    105 |       400 |       55000 |
|    105 |       404 |       33000 |
|    105 |       406 |      130000 |
|    107 |       403 |        5000 |
|    107 |       405 |       26000 |
|    108 |       402 |       22500 |
|    108 |       403 |       12000 |
+--------+-----------+-------------+
9 rows in set (0.00 sec)





mysql> select * from branch_supplier;

+-----------+---------------------+------------------+
| branch_id | supplier_name       | supply_type      |
+-----------+---------------------+------------------+
|         2 | Hammer Mill         | Paper            |
|         2 | J.T. Forms & Labels | Custom Forms     |
|         2 | Uni-ball            | Writing Utensils |
|         3 | Hammer Mill         | Paper            |
|         3 | Patriot Paper       | Paper            |
|         3 | Stamford Lables     | Custom Forms     |
|         3 | Uni-ball            | Writing Utensils |
+-----------+---------------------+------------------+
7 rows in set (0.00 sec)
