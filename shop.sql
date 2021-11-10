DROP DATABASE IF EXISTS SHOP;
CREATE DATABASE SHOP;
USE SHOP;
CREATE TABLE Manufacturer(
    ManufacturerID INT PRIMARY KEY NOT NULL,
    Brand  CHAR(20) NOT NULL,
    Country CHAR(20) NOT NULL
);
CREATE TABLE Product(
    ProductID INT PRIMARY KEY NOT NULL,
    CategoryID INT NOT NULL,
    Price Float NOT NULL CHECK (Price > 0),
    Amount INT NOT NULL,
    ProductName CHAR(20) NOT NULL,
    DescribeProduct VARCHAR(2000) NULL,
	WaitringTime INT NOT NULL,
    Photo VARCHAR(20) NOT NULL,
    ManufacturerID INT NOT NULL,
    Seller CHAR(20) NOT NULL
);
CREATE TABLE Delivery(
    DeliveryID INT PRIMARY KEY,
    Term CHAR(20),
    ProductID INT,
    Amount INT,
    Dealer CHAR(20)
);

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Firstname CHAR(50),
    Surname CHAR(50),
    Patronymic CHAR(50),
    Birthday CHAR(50),
    Passsword CHAR(50),
    Email CHAR(100) UNIQUE,
    PhoneNumber CHAR(50) UNIQUE
);
CREATE TABLE Ordering(
    OrderingID INT PRIMARY KEY,
    CustomerID INT,
    Term CHAR(10),
    TotalSum INT,
    TypeDelivery CHAR(10),
    ADDresss VARCHAR(30),
    PaymentType VARCHAR(10)
);
CREATE TABLE TypeProduct(
    CategoryID INT PRIMARY KEY,
    NameOfProduct CHAR(30),
    Category VARCHAR(15)
);
CREATE TABLE Basket(
    OrderID INT,
    ProductID INT,
    Amount INT,
    PRIMARY KEY(OrderID, ProductID)
);

-- alter table
ALTER TABLE Product
ADD FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID);
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

-- update
UPDATE Customer
	SET Email = CONCAT(Firstname, Email)
    WHERE Customerid < 3;
SELECT * FROM Customer;

-- delete
DO SLEEP(3);
DELETE FROM Customer 
WHERE Firstname = "Illia";
SELECT * FROM Customer;


DROP DATABASE IF EXISTS SHOP;
