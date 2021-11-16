DROP DATABASE IF EXISTS SHOP;
CREATE DATABASE SHOP;
USE SHOP;
CREATE TABLE Manufacturer (
    ManufacturerID INT PRIMARY KEY AUTO_INCREMENT,
    Brand CHAR(20) NULL,
    Country CHAR(20) NULL
);
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryID INT NOT NULL,
    Price FLOAT NOT NULL CHECK (Price > 0),
    Amount INT NOT NULL,
    ProductName CHAR(20) NOT NULL,
    DescribeProduct VARCHAR(2000) NULL,
    WaitingTime INT NOT NULL,
    ManufacturerID INT NOT NULL,
    Seller CHAR(20) NOT NULL
);
CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY,
    Term CHAR(20) NOT NULL,
    ProductID INT NOT NULL,
    Dealer CHAR(20) NULL
);

CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Firstname CHAR(50) NOT NULL,
    Surname CHAR(50) NOT NULL,
    Patronymic CHAR(50) NOT NULL,
    Birthday CHAR(50) NOT NULL,
    Passsword CHAR(50) UNIQUE NOT NULL,
    Email CHAR(100) UNIQUE NOT NULL CHECK (Email LIKE '%@gmail.com'),
    PhoneNumber CHAR(50) UNIQUE NOT NULL CHECK (PhoneNumber != '')
);
CREATE TABLE Ordering (
    OrderingID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Term CHAR(10) NOT NULL,
    TotalSum INT NOT NULL,
    TypeDelivery CHAR(10) NOT NULL,
    ADDresss VARCHAR(30) NOT NULL,
    PaymentType VARCHAR(10) NOT NULL
);
CREATE TABLE TypeProduct (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    Category VARCHAR(15) NOT NULL
);
CREATE TABLE Basket (
    OrderID INT UNIQUE NOT NULL,
    ProductID INT NOT NULL,
    Amount INT NOT NULL,
    PRIMARY KEY (OrderID , ProductID)
);

-- alter table  
ALTER TABLE Product
ADD FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID),
ADD FOREIGN KEY (CategoryID) REFERENCES TypeProduct(CategoryID);
ALTER TABLE Delivery
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
ALTER TABLE Ordering
ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE Basket
ADD FOREIGN KEY (OrderID) REFERENCES Ordering(OrderingID),
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

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
INSERT INTO Basket(OrderID, ProductID, Amount)
	VALUES (1, 198, 1),
    (2, 234, 1),
    (3, 543, 1);

-- update
UPDATE Customer 
SET 
    Email = CONCAT(Firstname, Email)
WHERE
    Customerid < 3;
SELECT 
    *
FROM
    Customer;

-- delete
-- DO SLEEP(1);
DELETE FROM Customer 
WHERE
    Firstname = 'Illia';
SELECT 
    *
FROM
    Customer;

SELECT 
    *
FROM
    Product
WHERE
    Seller = 'Serozha' AND Amount < 100;
-- DO SLEEP(1);
SELECT 
    ProductName, DescribeProduct
FROM
    Product
WHERE
    ProductName LIKE 'Ball%';
-- DO SLEEP(1);
SELECT 
    *
FROM
    Product
ORDER BY Price;
-- DO SLEEP(1);

SELECT DISTINCT
    *
FROM
    Product;
SELECT 
    *
FROM
    Product
LIMIT 2;
-- DO SLEEP(1);

SELECT 
    *
FROM
    Product
        INNER JOIN
    Basket ON Product.ProductID = Basket.ProductID;
-- DO SLEEP(1);

SELECT 
    COUNT(ProductName)
FROM
    Product;

-- DO SLEEP(1);
SELECT 
    MAX(Amount)
FROM
    Product;


SELECT 
    MIN(Amount)
FROM
    Product 
UNION SELECT 
    AVG(Amount)
FROM
    Product;

-- DO SLEEP(5);
SELECT 
    SUM(Amount)
FROM
    Product;

-- DO SLEEP(1);
SELECT 
    ProductName, COUNT(*)
FROM
    Product
GROUP BY ProductName;

-- DO SLEEP(1);
SELECT 
    Country, COUNT(*) AS Производитель
FROM
    Manufacturer
GROUP BY Country
HAVING COUNT(*) > 1;

SELECT CustomerID, Firstname,
CASE 
    WHEN Firstname="Lesha" THEN "leha"
    WHEN Firstname="Jeka" THEN "jenya"
END as prikol
FROM Customer;

SELECT  *,
CASE 
    WHEN Firstname="Lesha" THEN "должен сотку"
    WHEN Firstname="Jeka" THEN "должен 200"
    WHEN Firstname="Andrey" THEN "должен "
    WHEN Firstname="NeAndrey" THEN "не должен"
END as деньги
FROM CUSTOMER
ORDER BY CustomerID; 

SELECT CustomerID, Firstname,
 IF(Firstname = "Lesha", "leha", "neleha")
 AS nickname
FROM Customer;
DROP DATABASE IF EXISTS SHOP;

