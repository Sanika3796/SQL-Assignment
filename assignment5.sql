Assignment – 5
Relational and Logical Operators

1) Write a query that will give you all orders for more than Rs. 1,000.

Answer:
SELECT *
FROM ORDERS
WHERE Amt > 1000;


2) Write a query that will give you the names and cities of all salespeople in London with a commission above .10.

Answer:
SELECT Sname, City
FROM SALESPEOPLE
WHERE City = 'London'
AND Comm > 0.10;


3) Write a query on the Customers table whose output will exclude all customers with a rating <= 100, unless they are located in Rome.

Answer:
SELECT *
FROM CUSTOMERS
WHERE Rating > 100
OR City = 'Rome';


4) What will be the output from the following query?

Select * from Orders
where (amt < 1000 OR
NOT (odate = '1990-10-03'
AND cnum > 2003));

Answer:
The query will display all rows from the ORDERS table where:
• the amount is less than 1000
OR
• the order date is not '1990-10-03'
OR
• the customer number is less than or equal to 2003.


5) What will be the output of the following query?

Select * from Orders
where NOT ((odate = '1990-10-03' OR snum > 1006)
AND amt >= 1500);

Answer:
The query will display all rows from the ORDERS table where the condition inside NOT is false.  
This means orders where:
• amount is less than 1500  
OR  
• order date is not '1990-10-03' and salesperson number is not greater than 1006.


6) What is a simpler way to write this query?

Select snum, sname, city, comm From Salespeople
where (comm > .12 OR comm < .14);

Answer:
SELECT Snum, Sname, City, Comm
FROM SALESPEOPLE;
