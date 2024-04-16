-- create database minitest

use minitest;

-- create table minitest.TouristDestinations(
-- DestinationID int auto_increment primary key,
-- DestinationName varchar(255) not null,
-- Review text,
-- AveragePrice decimal(10, 2),
-- CityID int,
-- foreign key (CityID) references Citys(CityID)
-- );

-- insert into TouristDestinations(DestinationName, Review, AveragePrice, CityID)
-- values ('Cung điện Buckingham', 'Cảm nhận sự Quýs tộc', 72.27, 1),
-- ('Sahara Desert', 'Biển cát mênh mông mát mẻ', 5.11, 2),
-- ('Himalaya', 'Lên đỉnh ngắm view triệu Đô', 6.53, 3),
-- ('Atlantis City', 'Đừng thở nếu bạn muốn đến đây', 1.19, 4),
-- ('lăng mộ Tutankhamun', 'Điểm đến tuyệt vời nhất dành cho trẻ nhỏ', 66.89, 5);

-- create table minitest.Customers(
-- CustomerID int auto_increment primary key,
-- CustomerName varchar(255) not null,
-- IdentityCardNumber int,
-- BirthYear year,
-- CityID int,
-- foreign key (CityID) references Citys(CityID)
-- );

-- insert into Customers (CustomerName, IdentityCardNumber, BirthYear, CityID)
-- values ('Lê Hoàng Đức', 372183, 2001, 1),
--  ('Đặng Phước Quý', 453297, 2005, 1),
--  ('Phan Đình Trường', 823871, 2008, 2),
--  ('Phan Thanh Thảo', 369127, 2010, 5),
--  ('Dương Minh Hiếu', 547813, 2000, 5),
--  ('Nguyễn Tất Quần', 658983, 2000, 3),
--  ('Trịnh Lưu Kho', 861355, 2002, 5),
--  ('Phạm Hoảng An', 658982, 2001, 4),
--  ('Trần Bá Đạo', 468926, 1995, 1),
--  ('Nguyễn Nhật Huy', 123379, 2007, 4);

-- create table minitest.Citys(
-- CityID int auto_increment primary key,
-- CityName varchar(255) not null
-- );

-- insert into citys (CityName)
-- values ('Huệ'), ('Đà Nẵng'), ('Đà Lạt'), ('Nha Trang'), ('Hà Nội');

-- create table minitest.TourTypes(
-- TourTypeID int auto_increment primary key,
-- TypeID int not null,
-- TypeName varchar(255) not null
-- );

-- insert into TourTypes(TypeID, TypeName)
-- values (012,'Du Lịch Tự Túc'),
-- (013, 'Du Lịch Bụi');

-- create table minitest.Tours(
-- TourID int auto_increment primary key,
-- TourTypeID int not null,
-- TypeID varchar(255) not null,
-- Price decimal (10, 2),
-- DayStart date not null,
-- DayEnd date not null,
-- foreign key (TourTypeID) references TourTypes(TourTypeID)
-- );

-- insert into tours(TourTypeID, TypeID, DayStart, DayEnd, DestinationID)
-- values (2, 'DLB001', '2024-04-12', '2024-04-15', 1),
-- (1, 'DLT001', '2023-04-01', '2024-04-01', 2),
-- (1, 'DLT002', '2023-12-10', '2024-03-10', 3),
-- (2, 'DLB002', '2023-06-14', '2023-08-15', 4),
-- (1, 'DLT003', '2024-01-01', '2024-04-01', 5),
-- (2, 'DLB003', '2023-05-06', '2024-06-05', 4),
-- (1, 'DLT004', '2023-09-10', '2023-09-15', 3),
-- (2, 'DLB004', '2023-07-10', '2023-07-13', 2),
-- (1, 'DLT005', '2024-06-01', '2024-06-10', 1),
-- (2, 'DLB005', '2023-08-12', '2024-08-30', 2),
-- (1, 'DLT006', '2023-06-21', '2024-07-21', 3),
-- (2, 'DLB006', 68.90, '2024-03-05', '2024-04-10, 4'),
-- (1, 'DLT007', 130.68, '2023-05-31', '2024-04-11', 5),
-- (2, 'DLB007', 94.30, '2024-01-02', '2024-12-10', 4),
-- (1, 'DLT008', 129.79, '2024-02-12', '2024-06-07', 3);

-- create table minitest.TourOrders(
-- TourOrderID int auto_increment primary key,
-- TourID int not null,
-- CustomerID int not null,
-- OrderStatus varchar(30) not null default 'Pending',
-- foreign key (TourID) references TourTypes(TourTypeID),
-- foreign key (CustomerID) references Customers(CustomerID)
-- );

-- insert into tourorders (TourID, CustomerID, OrderStatus)
-- values (1, 1, 'Paid'), 
-- (2, 2, 'Pending'),
-- (1, 3, 'Pending'),
-- (2, 4, 'Paid'),
-- (1, 5, 'Pending'),
-- (2, 6, 'Paid'),
-- (1, 7, 'Paid'),
-- (2, 8, 'Paid'),
-- (1, 9, 'Pending'),
-- (2, 10, 'Pending');

select *
-- from minitest.TouristDestinations
-- from minitest.citys
from minitest.tourorders
-- from minitest.TourTypes
-- from minitest.TourOrders

