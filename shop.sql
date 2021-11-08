CREATE DATABASE IF NOT EXISTS SHOP;
USE SHOP;
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
    Photo VARCHAR(20),
    WaitringTime INT,
    ManufacturerrrID INT,
    CountryManufacturer CHAR(20),
    Seller CHAR(20),
    FOREIGN KEY (ManufacturerrrID) REFERENCES Manufacturer(ManufacturerID)
);
CREATE TABLE Delivery(
    DeliveryID INT PRIMARY KEY,
    DATEE CHAR(20),
    ProductID INT,
    Amount INT,
    Dealer CHAR(20),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    Namee CHAR(50),
    Surname CHAR(50),
    Patronymic CHAR(50),
    Email CHAR(100),
    birthday CHAR(50),
    Passsword CHAR(50),
    PhoneNumber CHAR(50)

);
CREATE TABLE Ordering(
    OrderingID INT PRIMARY KEY,
    CustomerID INT,
    Dating CHAR(10),
    TotalSum INT,
    TypeDelivery CHAR(10),
    Addresss VARCHAR(30),
    PaymentType VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
CREATE TABLE TypeProduct(
    CategoryID INT PRIMARY KEY,
    NameOfProduct CHAR(30),
    Category VARCHAR(15)
);
CREATE TABLE Basket(
    OrderID INT,
    ProductID INT,
    Amount INT
);
SHOW TABLES;
SHOW TABLES;
DROP DATABASE IF EXISTS SHOP;
