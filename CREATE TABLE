//to create table named Student
mysql> CREATE TABLE Student(student_ID INT PRIMARY KEY, student_NAME VARCHAR(20), student_SUBJECT VARCHAR(20));
Query OK, 0 rows affected (0.08 sec)

OR
//to create table named Student
mysql> CREATE TABLE Student(student_ID INT, student_NAME VARCHAR(20), student_SUBJECT VARCHAR(20),PRIMARY KEY(Student_ID));




//to describe the content of the table 
mysql> DESCRIBE Student;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| student_ID      | int         | NO   | PRI | NULL    |       |
| student_NAME    | varchar(20) | YES  |     | NULL    |       |
| student_SUBJECT | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+




//to drop a table that exists
mysql> DROP TABLE Student;
Query OK, 0 rows affected (0.03 sec)



//to add a new column to an already existing table
mysql> ALTER TABLE Student ADD gpa DECIMAL(3,2);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE Student;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| student_ID      | int          | NO   | PRI | NULL    |       |
| student_NAME    | varchar(20)  | YES  |     | NULL    |       |
| student_SUBJECT | varchar(20)  | YES  |     | NULL    |       |
| gpa             | decimal(3,2) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)




//to delete a column from a table that already exists
mysql> ALTER TABLE Student DROP COLUMN gpa;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE Student;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| student_ID      | int         | NO   | PRI | NULL    |       |
| student_NAME    | varchar(20) | YES  |     | NULL    |       |
| student_SUBJECT | varchar(20) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
