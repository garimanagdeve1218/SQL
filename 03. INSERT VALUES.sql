//to create a database named college 

mysql> CREATE DATABASE COLLEGE;
Query OK, 1 row affected (0.02 sec)






  
//to insert values into the table

mysql> INSERT INTO student VALUES(1,'Jack','Biology');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO student VALUES(2,'Rose','English');
Query OK, 1 row affected (0.05 sec)

mysql> select * from student;
+------------+--------------+-----------------+
| student_ID | student_NAME | student_SUBJECT |
+------------+--------------+-----------------+
|          1 | Jack         | Biology         |
|          2 | Rose         | English         |
+------------+--------------+-----------------+
2 rows in set (0.00 sec)






  
//when you suppose only know two values of three
  
mysql> INSERT INTO student(student_ID,student_NAME) VALUES(3,'Kate');
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+------------+--------------+-----------------+
| student_ID | student_NAME | student_SUBJECT |
+------------+--------------+-----------------+
|          1 | Jack         | Biology         |
|          2 | Rose         | English         |
|          3 | Kate         | NULL            |
+------------+--------------+-----------------+
3 rows in set (0.00 sec)
