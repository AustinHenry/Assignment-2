CREATE DATABASE BGS;
GO

USE BGS;
GO

/* Create the Product Table */
CREATE TABLE Products(
  ProductID bigint NOT NULL PRIMARY KEY,
  ProductName varchar(50) NOT NULL,
  Manufacturer varchar(50) NOT NULL,
  Price int NOT NULL);

/* Create the Customer Table */
CREATE TABLE Customers(
  CustomerID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Phone int NOT NULL,
  Address varchar(50) NOT NULL,
  Zip int NOT NULL);

/* Create the Orders Table */
CREATE TABLE Orders(
  CustomerID bigint NOT NULL PRIMARY KEY,
  CustomerID bigint NOT NULL,
  EmployeeID bigint NOT NULL,
  ProductID bigint NOT NULL,
  Quantity int NOT NULL,
  Donation int int NOT NULL);

/* Create the Employees Table */
CREATE TABLE Employees(
  EmployeeID bigint NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  JobTitle varchar(50) NOT NULL);

/* Create the Stores Table */
CREATE TABLE Stores(
  StoreID bigint NOT NULL PRIMARY KEY,
  Address varchar(50) NOT NULL,
  Zip int NOT NULL,
  ProductID bigint NOT NULL);

/* Create the Charities Table */
CREATE TABLE Charities(
  CharityID bigint NOT NULL PRIMARY KEY,
  Name varchar(50) NOT NULL,
  EmployeeID bigint NOT NULL,
  Address varchar(50) NOT NULL,
  Quantity int NOT NULL,
  StoreID bigint NOT NULL);

/* Add rows to Products*/
INSERT INTO Student (ProductID, ProductName, Manufacturer, Price) VALUES 
(1, 'Free Runs', 'Tian'),
(2, 'Pegasus', 'Gaudet'),
(3, 'Wave Riders', 'Krichevskiy'),
(4, 'Christian', 'Thompson'),
(5, 'Sang Won', 'Baek'),
(6, 'Matthew', 'Michalke'),