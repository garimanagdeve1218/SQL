/*so we can create table with contraints like:
1.)NOT NULL
2.)UNIQUE
3.)DEFAULT
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

