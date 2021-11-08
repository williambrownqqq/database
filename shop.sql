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
<<<<<<< HEAD
    WaitringTime INT,
    ManufacturerID INT,
    CountryManufacturer CHAR(20),
    Seller CHAR(20),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
=======
    ManufacturerID INT,
    Seller CHAR(20)
>>>>>>> 55b61e39c3575967d1b58862353f30704ba5388d
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
