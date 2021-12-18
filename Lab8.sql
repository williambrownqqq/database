SELECT ProductName, DescribeProduct, 
(SELECT ManufacturerID FROM Manufacturer
WHERE Manufacturer.ManufacturerID = Product.ManufacturerID)
As ManID
FROM Product;

SELECT ProductName,
(SELECT Brand FROM Manufacturer
WHERE Manufacturer.ManufacturerID = Product.ManufacturerID) AS brand
FROM Product;


-- --- 2

SELECT ProductName,
    (SELECT Amount FROM Basket WHERE Basket.ProductID = Product.ProductID) AS Amount
FROM Product
WHERE Product.ProductID > 2;


 -- 3
 SELECT * FROM Basket
 WHERE (Amount < ALL(SELECT Amount FROM Product WHERE  ManufacturerID = "7878" ) AND ProductID = "198");
 -- Выведем колличество тех товаров из корзины где колличество товаровов из корзины больше колличества товаров у производителя 7878

 SELECT * FROM Product
 WHERE Price < ANY(SELECT MAX(PRICE) FROM Product);

-- 4

DELETE FROM Delivery
 WHERE ProductID = (SELECT ProductID 
						   FROM Product
						  WHERE CategoryID = (SELECT CategoryID FROM TypeProduct WHERE Category = "Toy"));
                          
SELECT * FROM Delivery;

INSERT INTO Delivery(DeliveryID, Term, ProductID, Dealer) 
    VALUES(747, "termin", 234, "ZO Ball");

                          
UPDATE Product
   SET Price = Price + 100  
 WHERE CategoryID = (SELECT CategoryID 
					FROM TypeProduct
					WHERE Category = "Car");
                    
SELECT * FROM Product;
                    