-- All agregate functions without Group by
SELECT  COUNT(ProductName), MAX(Amount), MIN(Amount), AVG(Amount), SUM(Amount) FROM Product;
DO SLEEP(4);

-- All agregate functions with Group by 
SELECT Firstname, COUNT(*) FROM Customer
GROUP BY Firstname;

DO SLEEP(3);
SELECT Customer.CustomerID, Customer.Firstname, Ordering.TotalSum FROM Customer, Ordering
WHERE Customer.CustomerID = Ordering.CustomerID
GROUP BY CustomerID; 

DO SLEEP(2);
SELECT ProductName, COUNT(ProductName), MAX(Amount), MIN(Amount), AVG(Amount), CONCAT("The sum of ",SUM(Amount), ")") FROM Product
GROUP BY ProductName;

-- Usage of Having
DO SLEEP(4);
SELECT  Country, COUNT(*) AS Производитель
FROM Manufacturer
GROUP BY Country
Having COUNT(*) > 1;