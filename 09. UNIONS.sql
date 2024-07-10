--UNIONS can be very useful in combining the data as well:

mysql> select first_name    --by default the column name will be first_name because it was selected the first but we can change it by using AS.
    -> from employee
    -> UNION
    -> select branch_name
    -> from branch
    -> UNION
    -> select client_name
    -> from client;

+---------------------+
| first_name          |
+---------------------+
| David               |
| Jan                 |
| Michael             |
| Angela              |
| Kelly               |
| Stanley             |
| Josh                |
| Andy                |
| Jim                 |
| Corporate           |
| Scranton            |
| Stamford            |
| Dunmore Highschool  |
| Lackawana Country   |
| FedEx               |
| John Daly Law, LLC  |
| Scranton Whitepages |
| Times Newspaper     |
+---------------------+





mysql> select client_name
    -> from client
    -> UNION
    -> select supplier_name
    -> from branch_supplier;

+---------------------+
| client_name         |
+---------------------+
| Dunmore Highschool  |
| Lackawana Country   |
| FedEx               |
| John Daly Law, LLC  |
| Scranton Whitepages |
| Times Newspaper     |
| Hammer Mill         |
| J.T. Forms & Labels |
| Uni-ball            |
| Patriot Paper       |
| Stamford Lables     |
+---------------------+





mysql> select client_name, branch_id
    -> from client
    -> UNION
    -> select supplier_name, branch_id
    -> from branch_supplier;

+---------------------+-----------+
| client_name         | branch_id |
+---------------------+-----------+
| Dunmore Highschool  |         2 |
| Lackawana Country   |         2 |
| FedEx               |         3 |
| John Daly Law, LLC  |         3 |
| Scranton Whitepages |         2 |
| Times Newspaper     |         3 |
| FedEx               |         2 |
| Hammer Mill         |         2 |
| J.T. Forms & Labels |         2 |
| Uni-ball            |         2 |
| Hammer Mill         |         3 |
| Patriot Paper       |         3 |
| Stamford Lables     |         3 |
| Uni-ball            |         3 |
+---------------------+-----------+




--we can also write the above query as this just to make it more clear and readable to us:
  
mysql> select client_name, client.branch_id
    -> from client
    -> UNION
    -> select supplier_name, branch_supplier.branch_id
    -> from branch_supplier;

+---------------------+-----------+
| client_name         | branch_id |
+---------------------+-----------+
| Dunmore Highschool  |         2 |
| Lackawana Country   |         2 |
| FedEx               |         3 |
| John Daly Law, LLC  |         3 |
| Scranton Whitepages |         2 |
| Times Newspaper     |         3 |
| FedEx               |         2 |
| Hammer Mill         |         2 |
| J.T. Forms & Labels |         2 |
| Uni-ball            |         2 |
| Hammer Mill         |         3 |
| Patriot Paper       |         3 |
| Stamford Lables     |         3 |
| Uni-ball            |         3 |
+---------------------+-----------+





mysql> select total_sales
    -> from works_with
    -> UNION
    -> select salary
    -> from employee;
+-------------+
| total_sales |
+-------------+
|      267000 |
|       15000 |
|       55000 |
|       33000 |
|      130000 |
|        5000 |
|       26000 |
|       22500 |
|       12000 |
|      250000 |
|      110000 |
|       75000 |
|       63000 |
|       69000 |
|       78000 |
|       65000 |
|       71000 |
+-------------+
