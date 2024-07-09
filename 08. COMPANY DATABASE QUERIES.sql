/*Some basic queries related to the company database that we created earlier: */

--find all the employees ordered by salary:

mysql> SELECT * FROM employee ORDER BY SALARY;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |      102 |
        2 |
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |      102 |         2 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
+--------+------------+-----------+------------+------+--------+----------+-----------+





--find all the employees ordered by salary(descending):

mysql> SELECT * FROM employee ORDER BY SALARY DESC;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+





--find all employees ordered by sex then name:

mysql> select * from employee order by sex,first_name,last_name;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |      102 |         2 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |      102 |         2 |
|    107 | Andy       | Bernard   | 1973-07-22 | M    |  65000 |      106 |         3 |
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
|    106 | Josh       | Porter    | 1969-09-05 | M    |  78000 |      100 |         3 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    105 | Stanley    | Hudson    | 1958-02-19 | M    |  69000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+





--find the first five employees in the table:

mysql> select * from employee limit 5;

+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    100 | David      | Wallace   | 1967-11-17 | M    | 250000 |     NULL |         1 |
|    101 | Jan        | Levinson  | 1961-05-11 | F    | 110000 |      100 |         1 |
|    102 | Michael    | Scott     | 1964-03-15 | M    |  75000 |      100 |         2 |
|    103 | Angela     | Martin    | 1971-06-25 | F    |  63000 |      102 |         2 |
|    104 | Kelly      | Kapoor    | 1980-02-05 | F    |  55000 |      102 |         2 |
+--------+------------+-----------+------------+------+--------+----------+-----------+





--find the first and last names of all the employees:

mysql> select first_name,last_name from employee;

+------------+-----------+
| first_name | last_name |
+------------+-----------+
| David      | Wallace   |
| Jan        | Levinson  |
| Michael    | Scott     |
| Angela     | Martin    |
| Kelly      | Kapoor    |
| Stanley    | Hudson    |
| Josh       | Porter    |
| Andy       | Bernard   |
| Jim        | Halpert   |
+------------+-----------+






--find the forename and surnames of all employees:

mysql> select first_name AS forename, last_name AS surname from employee;
+----------+----------+
| forename | surname  |
+----------+----------+
| David    | Wallace  |
| Jan      | Levinson |
| Michael  | Scott    |
| Angela   | Martin   |
| Kelly    | Kapoor   |
| Stanley  | Hudson   |
| Josh     | Porter   |
| Andy     | Bernard  |
| Jim      | Halpert  |
+----------+----------+





--find out all the different genders:

mysql> select DISTINCT sex from employee;

+------+
| sex  |
+------+
| M    |
| F    |
+------+




--find out all the different brach_id:

mysql> select DISTINCT branch_id from employee;

+-----------+
| branch_id |
+-----------+
|         1 |
|         2 |
|         3 |
+-----------+






--------------------------------------------------FUNCTIONS--------------------------------------------------------------------
--find the number of employees:

mysql> select COUNT(emp_id) from employee;

+---------------+
| COUNT(emp_id) |
+---------------+
|             9 |
+---------------+





--find the number of female employees born after 1970:

mysql> select COUNT(emp_id) from employee where sex='F' and birth_date > '1971-01-01';

+---------------+
| COUNT(emp_id) |
+---------------+
|             2 |
+---------------+





--find the avg of all the employee's salaries:

mysql> select AVG(salary) from employee;

+-------------+
| AVG(salary) |
+-------------+
|  92888.8889 |
+-------------+





--find the sum of all the employee's salaries:

mysql> select SUM(salary) from employee;

+-------------+
| SUM(salary) |
+-------------+
|      836000 |
+-------------+





--find out how many males and females there are:

mysql> select COUNT(sex), sex
    -> FROM employee
    -> GROUP BY sex;

+------------+------+
| COUNT(sex) | sex  |
+------------+------+
|          6 | M    |
|          3 | F    |
+------------+------+





--find out how much each employee has sold:

mysql> select SUM(total_sales), emp_id
    -> from works_with
    -> GROUP BY emp_id;

+------------------+--------+
| SUM(total_sales) | emp_id |
+------------------+--------+
|           282000 |    102 |
|           218000 |    105 |
|            31000 |    107 |
|            34500 |    108 |
+------------------+--------+





--find out how much each client spends:

mysql> select SUM(total_sales), client_id
    -> from works_with
    -> GROUP BY client_id;

+------------------+-----------+
| SUM(total_sales) | client_id |
+------------------+-----------+
|            55000 |       400 |
|           267000 |       401 |
|            22500 |       402 |
|            17000 |       403 |
|            33000 |       404 |
|            26000 |       405 |
|           145000 |       406 |
+------------------+-----------+




-------------------------------------WILDCARDS & LIKE-------------------------------------------------------------

--find any client's name whos name have the pattern LLC in it:

mysql> select * from client
    -> WHERE client_name LIKE '%LLC';       --%means something at the start and then the pattern we are looking for

+-----------+--------------------+-----------+
| client_id | client_name        | branch_id |
+-----------+--------------------+-----------+
|       403 | John Daly Law, LLC |         3 |
+-----------+--------------------+-----------+






--find any branch suppliers who are in the label business:

select * from branch supplier WHERE supplier_name LIKE '% Label%';




--find any employee born in october:

mysql> select * from employee where birth_date LIKE '____-10%';     --underscore represents one character
+--------+------------+-----------+------------+------+--------+----------+-----------+
| emp_id | first_name | last_name | birth_date | sex  | salary | super_id | branch_id |
+--------+------------+-----------+------------+------+--------+----------+-----------+
|    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
+--------+------------+-----------+------------+------+--------+----------+-----------+







--find any clients who have school in there name:

mysql> select * from client where client_name LIKE '%school%';

+-----------+--------------------+-----------+
| client_id | client_name        | branch_id |
+-----------+--------------------+-----------+
|       400 | Dunmore Highschool |         2 |
+-----------+--------------------+-----------+
