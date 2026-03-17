1) Write a query that counts all orders for October 3.
Answer:
SELECT COUNT(*)
FROM Orders
WHERE odate = '1990-10-03';

2) Write a query that counts the number of different non-NULL city values in the Customers table.
Answer:
SELECT COUNT(DISTINCT city)
FROM Customers
WHERE city IS NOT NULL;

3) Write a query that selects each customer’s smallest order.
Answer:
SELECT cnum, MIN(amt) AS smallest_order
FROM Orders
GROUP BY cnum;

4) Write a query that selects the first customer, in alphabetical order, whose name begins with G.
Answer:
SELECT *
FROM Customers
WHERE cname LIKE 'G%'
ORDER BY cname ASC
LIMIT 1;

5) Write a query that selects the highest rating in each city.
Answer:
SELECT city, MAX(rating) AS highest_rating
FROM Customers
GROUP BY city;

6) Write a query that counts the number of salespeople registering orders for each day.
(Each salesperson counted only once per day)
Answer:
SELECT odate, COUNT(DISTINCT snum) AS num_salespeople
FROM Orders
GROUP BY odate;

