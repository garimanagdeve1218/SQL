--JOIN is basically used to combine rows from two or more tables based on a related column between them.
--when you have two tables and something is common in them we can use joins.

--let's first insert one more value in the branch table:

mysql> insert into branch values(4, 'Buffalo',NULL,NULL);

Query OK, 1 row affected (0.07 sec)




  
mysql> select * from branch;

+-----------+-------------+--------+----------------+
| branch_id | branch_name | mgr_id | mgr_start_date |
+-----------+-------------+--------+----------------+
|         1 | Corporate   |    100 | 2006-02-09     |
|         2 | Scranton    |    102 | 1992-04-06     |
|         3 | Stamford    |    106 | 1998-02-13     |
|         4 | Buffalo     |   NULL | NULL           |
+-----------+-------------+--------+----------------+





--find all branches and the names of their managers:
--since we are dealing with the employee table and the branch table for this query , focus on what's common in them:
--the emp_id and the mgr_id are storing the same imformation so they are common:

mysql> select employee.emp_id, employee.first_name, branch.branch_name
    -> from employee
    -> JOIN branch
    -> ON employee.emp_id = branch.mgr_id;

+--------+------------+-------------+
| emp_id | first_name | branch_name |
+--------+------------+-------------+
|    100 | David      | Corporate   |
|    102 | Michael    | Scranton    |
|    106 | Josh       | Stamford    |
+--------+------------+-------------+





--it will also work like this:

mysql> select emp_id,first_name,branch_name
    -> from employee
    -> JOIN branch
    -> ON emp_id = mgr_id;

+--------+------------+-------------+
| emp_id | first_name | branch_name |
+--------+------------+-------------+
|    100 | David      | Corporate   |
|    102 | Michael    | Scranton    |
|    106 | Josh       | Stamford    |
+--------+------------+-------------+





--LEFT JOIN:
--in left join we get all of the rows from the left table: here left table is employee table--
  
mysql> select employee.emp_id, employee.first_name, branch.branch_name
    -> from employee
    -> LEFT JOIN branch
    -> ON emp_id = mgr_id;

+--------+------------+-------------+
| emp_id | first_name | branch_name |
+--------+------------+-------------+
|    100 | David      | Corporate   |
|    101 | Jan        | NULL        |
|    102 | Michael    | Scranton    |
|    103 | Angela     | NULL        |
|    104 | Kelly      | NULL        |
|    105 | Stanley    | NULL        |
|    106 | Josh       | Stamford    |
|    107 | Andy       | NULL        |
|    108 | Jim        | NULL        |
+--------+------------+-------------+





--RIGHT JOIN:
--in right join we get all of the rows from the right table: here right table is branch table--
  
mysql> select employee.emp_id, employee.first_name, branch.branch_name
    -> from employee
    -> RIGHT JOIN branch
    -> ON emp_id = mgr_id;
+--------+------------+-------------+
| emp_id | first_name | branch_name |
+--------+------------+-------------+
|    100 | David      | Corporate   |
|    102 | Michael    | Scranton    |
|    106 | Josh       | Stamford    |
|   NULL | NULL       | Buffalo     |
+--------+------------+-------------+ 
