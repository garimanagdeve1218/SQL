/*UPDATE*/

/*Before updating this was the table*/

mysql> select * from student;
+------------+------+-----------+
| student_id | name | major     |
+------------+------+-----------+
|          1 | Jack | Biology   |
|          2 | Kate | Sociology |
+------------+------+-----------+
  
2 rows in set (0.00 sec)




/*using update*/

mysql> UPDATE student
    -> SET major = 'Bio'
    -> WHERE major = 'Biology';

Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0




/*after updating this is the table*/

mysql> select * from student;
+------------+------+-----------+
| student_id | name | major     |
+------------+------+-----------+
|          1 | Jack | Bio       |
|          2 | Kate | Sociology |
+------------+------+-----------+
2 rows in set (0.00 sec)

  



/*if we want to update certain student's major but by his/her student_id*/

mysql> UPDATE student
    -> SET major = 'Mathematics'
    -> WHERE student_id = 2;
Query OK, 1 row affected (0.02 sec)
  
Rows matched: 1  Changed: 1  Warnings: 0





/*ex:to update all the students whose major was bio or chemistry to biochemical*/

mysql> select * from student;
+------------+------+-------------+
| student_id | name | major       |
+------------+------+-------------+
|          1 | Jack | Bio         |
|          2 | Kate | Mathematics |
+------------+------+-------------+
  
2 rows in set (0.00 sec)





mysql> UPDATE student
    -> SET major = 'BioChemical'
    -> WHERE major = 'Bio' OR major = 'Chemistry';
Query OK, 2 rows affected (0.03 sec)
  
Rows matched: 2  Changed: 2  Warnings: 0



  

mysql> select * from student;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Jack  | BioChemical |
|          2 | Kate  | Mathematics |
|          3 | Kammy | Sociology   |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
  
4 rows in set (0.00 sec)





/*ex:*/

mysql> UPDATE student
    -> SET name = 'Tom', major = 'undecided'
    -> WHERE student_id = 1;
Query OK, 1 row affected (0.03 sec)
  
Rows matched: 1  Changed: 1  Warnings: 0



  

mysql> select * from student;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | undecided   |
|          2 | Kate  | Mathematics |
|          3 | Kammy | Sociology   |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
  
4 rows in set (0.00 sec)





/*ex:*/

mysql> UPDATE student
    -> SET major = 'BioChemical';
Query OK, 3 rows affected (0.02 sec)
  
Rows matched: 4  Changed: 3  Warnings: 0





mysql> select * from student;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
  
4 rows in set (0.00 sec)





/*DELETE*/

/*to deleyte a certain row from the table*/

mysql> DELETE FROM student
    -> WHERE student_id = 5;

Query OK, 0 rows affected (0.01 sec)




  

mysql> select * from student;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
  
4 rows in set (0.00 sec)





/*ex:*/

mysql> DELETE FROM student
    -> WHERE name = 'Tom' AND major = 'undecided';

Query OK, 0 rows affected (0.00 sec)





mysql> select * from student;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
  
4 rows in set (0.00 sec)
