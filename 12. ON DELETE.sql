--there are two thing with on delete:

--1)ON DDELETE SET NULL: means manager id that was associated to that employee is going to get set to null.
    
--2.)ON DELETE CASCADE: means if we delete the employee who's id is stored in the manager id column then we are going to delete the entire row in the database.

--1.)REMEMBER WHEN WE WROTE THIS: so this means:

mysql> CREATE TABLE branch (
    ->   branch_id INT PRIMARY KEY,
    ->   branch_name VARCHAR(40),
    ->   mgr_id INT,
    ->   mgr_start_date DATE,
    ->   FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
    -> );



mysql> DELETE FROM employee
    -> WHERE emp_id = 102;

Query OK, 1 row affected (0.04 sec)


  
mysql> SELECT * FROM branch;

+-----------+-------------+--------+----------------+
| branch_id | branch_name | mgr_id | mgr_start_date |
+-----------+-------------+--------+----------------+
|         1 | Corporate   |    100 | 2006-02-09     |
|         2 | Scranton    |   NULL | 1992-04-06     |
|         3 | Stamford    |    106 | 1998-02-13     |
|         4 | Buffalo     |   NULL | NULL           |
+-----------+-------------+--------+----------------+

--see the mgr_id of employee who's emp_id was 102 is now NULL because we deleated it same will happen in the employee table as well.

mysql> SELECT * FROM employee;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |     NULL |         2 |
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |     NULL |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |     NULL |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+




--2.)REMEMBER WHEN WE WROTE THIS: so this means:

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);


 
mysql> DELETE FROM branch
    -> WHERE branch_id = 2;

Query OK, 1 row affected (0.03 sec)


  
mysql> SELECT * FROM branch_supplier;

+-----------+-----------------+------------------+
| branch_id | supplier_name   | supply_type      |
+-----------+-----------------+------------------+
|         3 | Hammer Mill     | Paper            |
|         3 | Patriot Paper   | Paper            |
|         3 | Stamford Lables | Custom Forms     |
|         3 | Uni-ball        | Writing Utensils |
+-----------+-----------------+------------------+
