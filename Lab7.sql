USE SHOP;
-- Об'єднання
SELECT DeliveryID, Term, Dealer
  FROM Delivery
 UNION
SELECT ADDresss, TypeDelivery, PaymentType
  FROM Ordering
 ORDER BY 1;

 INSERT INTO Product(ProductName, CategoryID, Price, Amount, ProductName, DescribeProduct, WaitingTime, ManufacturerID, Seller) 
    VALUES (199,012346, 800, 150,"Ball", "Ball for Basketball",5, 7878 , "Serozha"),
    (224,345890, 90, 60,"Ball", "Ball for football",10, 3456 , "Serozha"),
    (555,012346, 555, 5,"Lamborgini", "luxury car",60, 7878 , "Serozha");
 
-- Переріз
SELECT ProductName, Price
    FROM (SELECT * FROM Product
        WHERE Price > 50) AS table1
WHERE EXISTS (SELECT ProductName, Price 
        FROM (SELECT ProductName, Price 
                FROM Product 
                    WHERE Price >200) AS table2
        WHERE table1.ProductName = table2.ProductName AND table1.Price = table2.Price);
                
-- Різниця 
SELECT ProductName, Price
    FROM (SELECT * FROM Product
        WHERE Price > 50) AS table1
WHERE NOT EXISTS (SELECT ProductName, Price 
        FROM (SELECT ProductName, Price 
                FROM Product 
                    WHERE Price >200) AS table2
        WHERE table1.ProductName = table2.ProductName AND table1.Price = table2.Price);
-- Декартовий добуток

SELECT * 
FROM Product, TypeProduct;
-- Селекція

SELECT ProductName, Price, DescribeProduct
FROM Product
WHERE Price < 250 AND Price > 30;
-- Проекція

SELECT FirstName, Surname, Patronymic
FROM Customer
ORDER BY 1 ASC; -- 1 - по первому столбику(имя)
-- Сполучення

SELECT DISTINCT ProductName, Price, DescribeProduct
FROM Product
JOIN Ordering ON Ordering.CustomerID = CustomerID;