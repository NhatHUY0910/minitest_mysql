use database_demo;

-- INSERT INTO Customers (CompanyName, CustomerName, ContractTitle, Address, City, PostalCode, Country, Phone)
-- VALUES ('Lazada', 'Đức Đau Đớn', 'Livestream Bán Hàng', 'Gallery Royal Palace', 'Huệ', 'MBC057', 'Germany', 2309459),
-- ('Betting House Europe', 'Quý Quằn Quại', 'Quảng Cáo Trá Hình', 'Courtyard Royal Palace', 'Huệ', 'MBC058', 'Italy', 4237468),
-- ('Tiktok', 'Thảo Thoi Thóp', 'KOL Livestream', 'Paper Bridge', 'Inner River', 'MBC033', 'Netherlands', 369712),
-- ('Google LLC', 'Trường Triển Chiêu', 'Security Guard', 'Sahara Desert',  'Cairo', 'MBC084', 'Egypt', 5368982),
-- ('Vietnam Airlines', 'Hiếu Hôi Hám', 'Chief pilot', 'Nine Skies', 'Heaven', 'MBC012', 'India', 5326491);

-- insert into Shippers (CompanyName, Phone)
-- values ('Grab', 5437583),
-- ('Gojek', 3210853),
-- ('Be', 12492287),
-- ('Xanh SM', 63492390);

-- insert into employees (LastName, FirstName, BirthDate, HireDate, Address, City, PostalCode, Country, HomePhone)
-- value ('Quân', 'Quần Tất', '1589-11-01', '2023-12-01', 'Textile Factory', 'London', 'MBC069', 'United Kingdom', 02847145),
-- ('Khoa', 'Khá Bảnh', '1993-11-27', '2024-02-13', 'Mountain', 'Bye Mountain', 'MBC587', 'Viet Nam', 12094734),
-- ('Huy', 'Hảo Hán', '2100-12-01', '2023-01-30', 'Andromeda Galaxy', 'Universe', 'MBC338', 'Earth', 0331111),
-- ('King', 'Eat', '2001-06-08', '2023-11-10', 'Farm', 'Sai Gon', 'MBC068', 'Viet Nam', 434871256);

-- insert into orders (CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipperID, TransportationVehicle, FreightCost, ShipAddress, ShipCity, ShipPosTalCode, ShipCountry)
-- values (1, 1, '2024-04-12', '2024-04-15', '2024-04-16', 3, 'Bike', 56.89, 'Gallery Royal Palace', 'Huệ', 'MBC057', 'Germany'),
-- (2, 2, '2024-01-20', '2024-01-30', '2024-01-28', 4, 'Car', 105.99, 'Courtyard Royal Palace', 'Huệ', 'MBC058', 'Italy'),
-- (3, 4, '2024-03-09', '2024-06-04', '2024-06-10', 2, 'Cargo Ship', 399.99, 'Paper Bridge', 'Inner River', 'MBC033', 'Netherlands'),
-- (4, 3, '2024-05-16', '2024-07-27', '2024-12-28', 1, 'Bicycle', 513.65, 'Sahara Desert', 'Cairo', 'MBC084', 'Egypt'),
-- (5, 3, '2024-10-07', '2024-11-07', '2024-11-07', 1, 'Airplane', 700.85, 'Nine Skies', 'Heaven', 'MBC012', 'India');

insert into suppliers (CompanyName, ContractTitle, Address, City, PostalCode, Country, Phone, HomePage)
values ('Lazada', 'Livestream Bán Hàng', 'Luzon Island', 'Manila', 'MBC057', 'Philippines', 3827593, 'lazada.com'),
('Betting House Europe', 'Quảng Cáo Trá Hình', 'Nevada', 'Las Vegas', 'MBC058', 'United States', 3827593, 'i88bet.com');

select *
FROM database_demo.suppliers
