SELECT * FROM Product WHERE Seller = "Serozha" AND Amount < 100;
-- DO SLEEP(1);
SELECT ProductName, DescribeProduct FROM Product WHERE ProductName Like "Ball%" ;
-- DO SLEEP(1);
SELECT * FROM Product
ORDER BY Price;
-- DO SLEEP(1);

SELECT DISTINCT * FROM Product;
SELECT * FROM Product LIMIT 2;
-- DO SLEEP(1);

SELECT *
FROM Product
INNER JOIN Basket
ON Product.ProductID = Basket.ProductID;
-- DO SLEEP(1);

SELECT *
FROM Product
Union 
Select *
from Basket