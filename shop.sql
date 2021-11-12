DROP DATABASE IF EXISTS SHOP;
CREATE DATABASE SHOP;
USE SHOP;
CREATE TABLE Manufacturer(
    ManufacturerID INT PRIMARY KEY,
    Brand  CHAR(20) NULL,
    Country CHAR(20) NULL
);
CREATE TABLE Product(
    ProductID INT PRIMARY KEY,
    CategoryID INT NOT NULL,
    Price Float NOT NULL CHECK (Price > 0),
    Amount INT NOT NULL,
    ProductName CHAR(20) NOT NULL,
    DescribeProduct VARCHAR(2000) NULL,
    WaitringTime INT NOT NULL,
    -- Photo VARCHAR(20) NOT NULL,
    ManufacturerID INT NOT NULL,
    Seller CHAR(20) NOT NULL
);
CREATE TABLE Delivery(
    DeliveryID INT PRIMARY KEY AUTO_INCREMENT,
    Term CHAR(20) NOT NULL,
    ProductID INT NOT NULL,
    Amount INT NOT NULL,
    Dealer CHAR(20) NULL
);

CREATE TABLE Customer(
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Firstname CHAR(50) NOT NULL,
    Surname CHAR(50) NOT NULL,
    Patronymic CHAR(50) NOT NULL,
    Birthday CHAR(50) NOT NULL,
    Passsword CHAR(50) UNIQUE NOT NULL,
    Email CHAR(100) UNIQUE NOT NULL CHECK(Email!=''),
    PhoneNumber CHAR(50) UNIQUE NOT NULL CHECK(PhoneNumber!='')
    -- CHECK(Email != NULL OR PhoneNumber != NULL)
);
CREATE TABLE Ordering(
    OrderingID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Term CHAR(10) NOT NULL,
    TotalSum INT NOT NULL,
    TypeDelivery CHAR(10) NOT NULL,
    ADDresss VARCHAR(30) NOT NULL,
    PaymentType VARCHAR(10) NOT NULL
);
CREATE TABLE TypeProduct(
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    NameOfProduct CHAR(30) NOT NULL,
    Category VARCHAR(15) NOT NULL
);
CREATE TABLE Basket(
    OrderID INT UNIQUE NOT NULL,
    ProductID INT NOT NULL,
    Amount INT NOT NULL,
    PRIMARY KEY(OrderID, ProductID)  
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
INSERT INTO Customer (Firstname, Surname, Patronymic, Birthday, Passsword, Email, PhoneNumber) 
 VALUES ("Illia", "Сидоров", "Петрович", "01.01.2003", "A>/*fE6\3QNsh{GR", "@gmail.com",  "+380234557849"),
("lesha", "zanchenko", "dmitrievich", "01.01.2000","qwertyuiop", "mail@gmail.com", "+380445657849"),
("lesha", "dudkin", "batkovich", "01.01.2001","qwerty123", "gmail@gmail.com", "+380444557849");

INSERT INTO Manufacturer(ManufacturerID, Brand, Country)
VALUES (7878, "lamborghini", "Ukraine");

INSERT INTO TypeProduct(CategoryID, NameOfProduct, Category)
VALUES (012346, "Audi", "Car");

INSERT INTO Product(ProductID, CategoryID, Price, Amount, ProductName, DescribeProduct, WaitringTime, ManufacturerID, Seller) 
VALUES(543,012346, 111.4, 2,"yaht", "lamborghini", 60, 7878, "lamborghini");

INSERT INTO Ordering(OrderingID, CustomerID, Term, TotalSum, TypeDelivery, ADDresss, PaymentType)
VALUES (999, 1, 10, 100, "NovaPoshta", "kyiv", "cash");

INSERT INTO Basket(OrderID, ProductID, Amount)
VALUES (999, 543, 1);

INSERT INTO Delivery(DeliveryID, Term, ProductID, Amount, Dealer)
VALUES (777, "term", 543, 1, "GMC");



-- update
UPDATE Customer
  SET Email = CONCAT(Firstname, Email)
    WHERE Customerid < 3;
SELECT * FROM Customer;

-- delete
-- DO SLEEP(3);
-- DELETE FROM Customer 
-- WHERE Firstname = "Illia";
-- SELECT * FROM Customer;

-- SELECT * FROM Product WHERE Price > 100;

SELECT * FROM Product WHERE Seller = "lamborghini" AND Price > 100;

SELECT ProductName FROM Product WHERE ProductName Like "yaht%" ;

SELECT * FROM Product
ORDER BY Price;

DROP DATABASE IF EXISTS SHOP;

