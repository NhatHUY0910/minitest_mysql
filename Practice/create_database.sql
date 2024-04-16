-- drop database database_demo;

-- ---------Tạo Bảng Và Dữ Liệu---------:

-- create database database_demo;

  create table database_demo.Customers(
CustomerID int auto_increment primary key,
CompanyName varchar(255) not null,
CustomerName varchar(225) not null,
ContractTitle varchar(255) not null,
Address varchar(255) not null,
City varchar(255) not null,
PostalCode varchar(255) not null,
Country varchar(255) not null,
Phone int not null
);
 
  create table database_demo.Shippers(
ShipperID int auto_increment primary key,
CompanyName varchar(255),
Phone int
);

  create table database_demo.Orders(
OrderID int auto_increment primary key,
CustomerID int not null,
EmployeeID int not null,
OrderDate date not null,
RequiredDate date not null,
ShippedDate date not null,
ShipperID int,
TransportationVehicle varchar(255) ,
FreightCost double not null,
ShipAddress varchar(255),
ShipCity varchar(255),
ShipRegion varchar(255),
ShipPosTalCode varchar(200),
ShipCountry varchar(255),
foreign key (CustomerID) references database_demo.Customers(CustomerID),
foreign key (EmployeeID) references database_demo.Employees(EmployeeID),
foreign key (ShipperID) references  database_demo.shippers(ShipperID)
);
--  
  create table database_demo.Employees(
EmployeeID int auto_increment primary key,
LastName varchar(255) not null,
FirstName varchar(255) not null,
Title varchar(255),
BirthDate date not null,
HireDate date,
Address varchar(255) not null,
City varchar(255),
PostalCode varchar(55),
Country varchar(255),
HomePhone int
);
--   
--   create table database_demo.OrderDetails(
-- OrderID int,
-- ProductID int,
-- UnitPrice int not null,
-- Quantity int not null,
-- Discount double,
-- primary key (OrderID, ProductID),
-- foreign key (OrderID) references database_demo.orders(OrderID),
-- foreign key (ProductID) references database_demo.Products(ProductID)
-- );
--     
--   create table database_demo.Products(
-- ProductID int auto_increment primary key,
-- ProductName varchar(255),
-- SupplierID int,
-- CategoryID int,
-- QuantityPerUnit int not null,
-- UnitPrice double not null,
-- UnitsInStock int not null,
-- UnitsOnOrder int not null,
-- ReorderLevel varchar(55),
-- Discontinued tinyint(1) default 0,
-- foreign key (SupplierID) references database_demo.Suppliers(SupplierID),
-- foreign key (CategoryID) references database_demo.Categories(CategoryID)
-- );

  create table database_demo.Suppliers(
SupplierID int primary key auto_increment,
CompanyName varchar(255) not null,
ContractTitle varchar(255) not null,
Address varchar(255) not null,
City varchar(255),
PostalCode int,
Country varchar(255) not null,
Phone int,
HomePage varchar(255)
);
--   
--   create table database_demo.Categories(
-- CategoryID int primary key auto_increment,
-- CategoryName varchar(255) not null
-- );

