/*SELECT*/
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




  
mysql> select name
    -> from student;
+-------+
| name  |
+-------+
| Tom   |
| Kate  |
| Kammy |
| Sammy |
+-------+
4 rows in set (0.02 sec)




  
mysql> select major
    -> from student
    -> ;
+-------------+
| major       |
+-------------+
| BioChemical |
| BioChemical |
| BioChemical |
| BioChemical |
+-------------+
4 rows in set (0.00 sec)



  

mysql> select name, major
    -> from student;
+-------+-------------+
| name  | major       |
+-------+-------------+
| Tom   | BioChemical |
| Kate  | BioChemical |
| Kammy | BioChemical |
| Sammy | BioChemical |
+-------+-------------+
4 rows in set (0.00 sec)




  
mysql> select * from student
    -> where student_id = 4;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
1 row in set (0.01 sec)





/*sometimes people do this just to make it clear from which table the name and the major is coming from */
mysql> select student.name, student.major
    -> from student;
+-------+-------------+
| name  | major       |
+-------+-------------+
| Tom   | BioChemical |
| Kate  | BioChemical |
| Kammy | BioChemical |
| Sammy | BioChemical |
+-------+-------------+
4 rows in set (0.01 sec)


  ---------------------------------------------------------------------


/*ORDER BY:*/
mysql> select name, major
    -> from student
    -> ORDER BY name;
+-------+-------------+
| name  | major       |
+-------+-------------+
| Kammy | BioChemical |
| Kate  | BioChemical |
| Sammy | BioChemical |
| Tom   | BioChemical |
+-------+-------------+
4 rows in set (0.01 sec)

/*all the names are in alphabetical order now*/




mysql> select name, major
    -> from student
    -> ORDER BY name DESC;
+-------+-------------+
| name  | major       |
+-------+-------------+
| Tom   | BioChemical |
| Sammy | BioChemical |
| Kate  | BioChemical |
| Kammy | BioChemical |
+-------+-------------+
4 rows in set (0.00 sec)

/*all the names are in reverse alphabetical order now*/




mysql> select *
    -> from student
    -> ORDER BY student_id DESC;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          4 | Sammy | BioChemical |
|          3 | Kammy | BioChemical |
|          2 | Kate  | BioChemical |
|          1 | Tom   | BioChemical |
+------------+-------+-------------+
4 rows in set (0.00 sec)





/*first it will order by major and then it will order by student_id*/
mysql> select *
    -> from student
    -> ORDER BY major, student_id;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
|          4 | Sammy | BioChemical |
+------------+-------+-------------+
4 rows in set (0.01 sec)
  




/*LIMIT*/
mysql> select *
    -> from student
    -> LIMIT 2;
+------------+------+-------------+
| student_id | name | major       |
+------------+------+-------------+
|          1 | Tom  | BioChemical |
|          2 | Kate | BioChemical |
+------------+------+-------------+
2 rows in set (0.00 sec)

/*it basically limits the information we get back in rows*/




mysql> select *
    -> from student
    -> ORDER BY student_id
    -> LIMIT 2;
+------------+------+-------------+
| student_id | name | major       |
+------------+------+-------------+
|          1 | Tom  | BioChemical |
|          2 | Kate | BioChemical |
+------------+------+-------------+
2 rows in set (0.00 sec)




  
mysql> select *
    -> from student
    -> WHERE student_id <= 3 AND name <> 'Tom'
    -> ;
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
+------------+-------+-------------+
2 rows in set (0.01 sec)





  mysql> select *
    -> from student
    -> WHERE name in('Tom','Kate','Kammy');
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
+------------+-------+-------------+
3 rows in set (0.01 sec)

/*so if the name is Tom or Kate or Kammy it's gonna select that*/






mysql> select *
    -> from student
    -> WHERE name in('Tom','Kate','Kammy') AND major in('BioChemical');
+------------+-------+-------------+
| student_id | name  | major       |
+------------+-------+-------------+
|          1 | Tom   | BioChemical |
|          2 | Kate  | BioChemical |
|          3 | Kammy | BioChemical |
+------------+-------+-------------+
3 rows in set (0.00 sec)





mysql> select *
    -> from student
    -> WHERE name in('Tom','Kate','Kammy') AND major in('Mathematics');
Empty set (0.00 sec)






