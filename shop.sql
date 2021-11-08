DROP DATABASE IF EXISTS Shop;
CREATE DATABASE Shop;
USE Shop;
CREATE TABLE Manufacturer(
    ManufacturerID INT PRIMARY KEY,
    Brand  CHAR(20),
    Country CHAR(20)
);
CREATE TABLE Product(
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    Price Float,
    Amount INT,
    ProductName CHAR(20),
    DescribeProduct VARCHAR(2000),
	WaitringTime INT,
    Photo VARCHAR(20),
    ManufacturerID INT,
    Seller CHAR(20)
);
CREATE TABLE Delivery(
    DeliveryID INT PRIMARY KEY,
    Term CHAR(20),
    ProductID INT,
    Amount INT,
    Dealer CHAR(20)
);

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    Firstname CHAR(50),
    Surname CHAR(50),
    Patronymic CHAR(50),
    Email CHAR(100),
    Birthday CHAR(50),
    Passsword CHAR(50),
    PhoneNumber CHAR(50)

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
ALTER TABLE Product
ADD FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID);
ALTER TABLE Delivery
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID);
ALTER TABLE Ordering
ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE Basket
ADD FOREIGN KEY (OrderID) REFERENCES Ordering(OrderingID),
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID);


DROP DATABASE IF EXISTS Shop;
