
-- ---------Các Thao Tác Thêm, Sửa, Xóa---------: 

-- truncate table employees;
-- drop table employees;

-- SET SQL_SAFE_UPDATES = 0;
-- delete from persons
-- where PersonID = 1;
-- SET SQL_SAFE_UPDATES = 1;

-- alter table database_demo.customers

-- update Customers
-- set CompanyName = 'Betting House Europe'
-- where CustomerID = 2;

-- add column DiligentPoint int;
-- change column Career ContractTitle varchar(255) not null;
-- drop column ContractName;

-- drop foreign key orders_ibfk_2;
-- add constraint orders_ibfk_2 foreign key (EmployeeID) references database_demo.Employees(EmployeeID);

-- modify ShipPosTalCode varchar(200);
-- modify PersonID varchar(255) not null;

select *
FROM database_demo.customers

