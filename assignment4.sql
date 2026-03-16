Assignment – 4
Retrieving Information from Tables

1) Write a select command that produces the order number, amount, and date for all rows in the Orders table.

Answer:
SELECT Onum, Amt, Odate
FROM ORDERS;


2) Write a query that produces all rows from the Customers table for which the salesperson’s number is 1001.

Answer:
SELECT *
FROM CUSTOMERS
WHERE Snum = 1001;


3) Write a query that displays the Salespeople table with the columns in the following order: city, sname, snum, comm.

Answer:
SELECT City, Sname, Snum, Comm
FROM SALESPEOPLE;


4) Write a select command that produces the rating followed by the name of each customer in San Jose.

Answer:
SELECT Rating, Cname
FROM CUSTOMERS
WHERE City = 'San Jose';


5) Write a query that will produce the snum values of all salespeople (suppress the duplicates) with orders in the Orders table.

Answer:
SELECT DISTINCT Snum
FROM ORDERS;
