use minitest;

-- ---------Các Thao Tác Chỉnh Sửa---------: 

-- drop table tourtypes;

-- update tours 
-- set DestinationID = 3
-- where TourID = 15;

alter table minitest.tours

-- add column DiligentPoint int;
-- add column DestinationID int not null;
add constraint fk_tours_DestinationID
foreign key (DestinationID) 
references minitest.touristdestinations(DestinationID);

-- drop column Price;
-- modify TypeID varchar(255) not null;
-- modify Review text;
-- add unique (Email);
-- add unique (PersonID);
-- drop index Email;
-- drop primary key;
-- alter City drop default;

-- create index idx_lastname
-- on Persons(LastName);
-- create index idx_firstname
-- on Persons(FirstName);

-- ---------Các Thao Tác Xóa---------:

-- truncate table persons;
-- drop table Persons;
-- drop table Orders;
-- SET SQL_SAFE_UPDATES = 0;
-- delete from persons
-- where PersonID = 1;
-- SET SQL_SAFE_UPDATES = 1;

-- SELECT * FROM tours;
select * from minitest.tours;
-- select * from minitest.touristdestinations;