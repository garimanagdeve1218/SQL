--NESTED QUERIES:

--find names of all the employees who have sold over 30,000 to a single client: 

 mysql> select employee.first_name, employee.last_name
    -> from employee
    -> where employee.emp_id in (
    -> select works_with.emp_id
    -> from works_with
    -> where works_with.total_sales > 30000
    -> );

+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Michael    | Scott     |
| Stanley    | Hudson    |
+------------+-----------+ 





--find all the clients who are handled by the branch that michael scott manages
--question also says that assume you know MIchel's ID:

mysql> select client.client_name 
       from client 
       where branch_id = (select branch.branch_id from branch where branch.mgr_id = 102);

+---------------------+
| client_name         |
+---------------------+
| Dunmore Highschool  |
| Lackawana Country   |
| Scranton Whitepages |
| FedEx               |
+---------------------+
