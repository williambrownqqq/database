-- insert
INSERT INTO Manufacturer(ManufacturerID, Brand, Country)
	VALUES (6894, "BELTGUYS", "Ukraine"),
    (3456, "Smoby", "USA"),
    (7878, "Lamborghini", "USA");
INSERT INTO Customer (Firstname, Surname, Patronymic, Birthday, Passsword, Email, PhoneNumber) 
	VALUES ("Lesha", "Dudkin", "Nikolaevich", "10.04.2003","qwerty123", "alisha@gmail.com", "+380849730945"),
    ("Lesha", "Zanchenko", "Dmitrievich", "25.03.2002","9sdfygo9sdf", "zanlesh@gmail.com", "+380444557849"),
    ("Jeka", "Zakharchuk", "Nikolaevich", "05.04.2001","q;sodgdfggl8", "zheniazk@gmail.com", "+3802342343423"),
     ("Andrey", "NeDudkin", "Nikolaevich", "05.04.2023","q;sodsdfhhgl8", "andrey@gmail.com", "+38234523"),
      ("NeAndrey", "NeZanchenko", "Nikolaevich", "05.04.1900","q;sodadsfidhgl8", "neandreyk@gmail.com", "+38568956783423");
INSERT INTO TypeProduct(CategoryID, Category)
	VALUES (234566, "Stationery"),
    (345890, "Toy"),
    (012346, "Car");
INSERT INTO Product(ProductID, CategoryID, Price, Amount, ProductName, DescribeProduct, WaitingTime, ManufacturerID, Seller) 
	VALUES (198,012346, 33.4, 150,"Ball", "Ball for Basketball",5, 7878 , "Serozha"),
    (234,345890, 1011.50, 60,"Ball", "Ball for football",10, 3456 , "Serozha"),
    (543,012346, 111.4, 5,"Lamborgini", "luxury car",60, 7878 , "Serozha");
INSERT INTO Ordering(CustomerID, Term, TotalSum, TypeDelivery, ADDresss, PaymentType)
	VALUES (1, 10, 100, "NovaPoshta", "kyiv", "cash"),
    (2, 15, 60, "NovaPoshta", "kyiv", "cash"),
    (3, 18, 200, "UkrPoshta", "kyiv", "cash");
INSERT INTO Delivery(DeliveryID, Term, ProductID, Dealer)
	VALUES (243, "term", 198, "GMC"),
    (898, "term", 234, "GMC"),
    (777, "term", 543, "GMC");
-- INSERT INTO Basket(OrderID, ProductID, Amount)
-- 	VALUES (1, 198, 1),
--     (2, 234, 1),
--     (3, 543, 1);

-- update
UPDATE Customer
  SET Email = CONCAT(Firstname, Email)
    WHERE Customerid < 3;
SELECT * FROM Customer;

-- delete
DO SLEEP(1);
DELETE FROM Customer 
WHERE Firstname = "Illia";
SELECT * FROM Customer;
INSERT INTO 
                    Basket(OrderID, ProductID, Amount) 
                    VALUES ((SELECT COUNT(*) FROM Ordering) + 1, 
                    (SELECT ProductID FROM Product WHERE ProductName = "Lamborgini"), 
                    1);

SELECT * FROM Basket