1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.
Answer:
SELECT *
FROM Orders
WHERE odate = '1990-10-03'
   OR odate = '1990-10-04';

2) Write a query that selects all of the customers serviced by Peel or Motika.
Answer:
SELECT *
FROM Customers
WHERE snum IN (
    SELECT snum
    FROM Salespeople
    WHERE sname IN ('Peel', 'Motika')
);

3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.
Answer:
SELECT *
FROM Customers
WHERE cname BETWEEN 'A' AND 'Gz';

4) Write a query that selects all customers whose names begin with the letter ‘C’.
Answer:
SELECT *
FROM Customers
WHERE cname LIKE 'C%';

5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.
Answer:
SELECT *
FROM Orders
WHERE amt IS NOT NULL
  AND amt <> 0;
