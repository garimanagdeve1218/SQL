/*so we can create table with contraints like:
1.)NOT NULL
2.)UNIQUE
3.)DEFAULT
4.)AUTO_INCREMENT
*/





/*USING NOT NULL AND UNIQUE*/

mysql> CREATE TABLE Student(student_ID INT, student_NAME VARCHAR(20) NOT NULL, student_SUBJECT VARCHAR(20) UNIQUE,PRIMARY KEY(Student_ID));
Query OK, 0 rows affected (0.09 sec)

/*now if i put NULL value in name then it will give error */

ERROR 1048 (23000): Column 'student_NAME' cannot be null




  
/*now if i enter another student with the same subject it will give us an error as we put the keyword UNIQUE*/

mysql> INSERT INTO student VALUES(6,'Mack','Biology');

ERROR 1062 (23000): Duplicate entry 'Biology' for key 'student.student_SUBJECT'





/*USING DEFAULT*/
/*when we want to give the default value to something in this case let's give the default subject to those who didn't wrote any*/

mysql> CREATE TABLE Student(student_id INT,name VARCHAR(20),major VARCHAR(20) DEFAULT 'undecided',PRIMARY KEY(Student_ID));

Query OK, 0 rows affected (0.05 sec)



  
  
mysql> INSERT INTO student(student_id, name) VALUES(1, 'Jack');

Query OK, 1 row affected (0.02 sec)




  
mysql> select * from student;

+------------+------+-----------+
| student_id | name | major     |
+------------+------+-----------+
|          1 | Jack | undecided |
+------------+------+-----------+
1 row in set (0.00 sec)




/*USING AUTO_INCREMENT*/

mysql> CREATE TABLE Student(student_id INT AUTO_INCREMENT,name VARCHAR(20),m
ajor VARCHAR(20),PRIMARY KEY(Student_ID));

Query OK, 0 rows affected (0.05 sec)

  

mysql> INSERT INTO student(name, major) VALUES('Jack','Biology');

Query OK, 1 row affected (0.02 sec)


  
mysql> INSERT INTO student(name, major) VALUES('Kate','Sociology');

Query OK, 1 row affected (0.03 sec)



mysql> select * from student;
+------------+------+-----------+
| student_id | name | major     |
+------------+------+-----------+
|          1 | Jack | Biology   |
|          2 | Kate | Sociology |
+------------+------+-----------+

2 rows in set (0.00 sec)


/*as we can see here the value of primary key is noe automatically incremented and we didn't had to give it a value every time*/

