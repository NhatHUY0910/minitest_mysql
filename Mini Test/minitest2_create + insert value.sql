-- create schema student_management;

use student_management;

-- create table Address(
-- AddressID int auto_increment primary key,
-- Address varchar(255) not null
-- );

-- insert into address(Address)
-- value ('Cầu Giấy, Hà Nội'),
-- ('Sông, Sài Gòn'),
-- ('Cung Đình, Huệ'),
-- ('Bãi Biển, Nha Trang'),
-- ('Đồi Núi, Đà Lạt');

-- create table Classes(
-- ClassID int auto_increment primary key,
-- ClassName varchar(255) not null,
-- ClassLanguage varchar(255) not null,
-- ClassDescription text
-- );

-- insert into classes(ClassName, ClassLanguage, ClassDescription)
-- values ('Lão Luyện', 'Python', 'Học viết code ngôn ngữ trí truệ nhân tạo - AI'),
-- ('Cao Thủ', 'Javascrip', 'Chỉ dành cho những lập trình viên có tay nghề'),
-- ('Hacker', 'Java', 'Dành cho những ai muốn làm người xấu'),
-- ('Thợ Code', 'C#', 'Kiến thức nâng cao sau khi học xong cơ bản'),
-- ('Newbie', 'C++', 'Bắt đầu bước vào con đường tà đạo');

-- create table Student(
-- StudentID int auto_increment primary key,
-- Fullname varchar(255) not null,
-- AddressID int not null,
-- age int,
-- Phone int unique,
-- ClassID int not null,
-- foreign key (AddressID) references Address(AddressID),
-- foreign key (ClassID) references Classes(ClassID)
-- );

-- insert into student(Fullname, AddressID, age, Phone, ClassID)
-- values ('Lê Hoàng Đức', 1, 13, 343871, 1),
--  ('Đặng Phước Quý', 2, 14, 394142, 2),
--  ('Phan Đình Trường', 3, 5, 449584, 3),
--  ('Phan Thanh Thảo', 4, 3, 369127, 4),
--  ('Dương Minh Hiếu', 5, 70, 984341, 5),
--  ('Nguyễn Tất Quần', 4, 71, 659864, 4),
--  ('Trịnh Lưu Kho', 3, 1, 492832, 3),
--  ('Phạm Hoảng An', 2, 30, 958632, 2),
--  ('Trần Bá Đạo', 1, 27, 218504, 5),
--  ('Nguyễn Nhật Huy', 3, 15, 331297, 1);

-- create table Course(
-- CourseID int auto_increment primary key,
-- CourseName varchar(255) not null,
-- CourseDescription text
-- );

-- insert into course(CourseName, CourseDescription)
-- values ('Lập trình viên Full Stack', 'Học xong làm Bá Tổng'),
-- ('Lập trình viên Backend', 'Học xong làm thợ hồ'),
-- ('Lập trình viên Frontend', 'Học xong làm họa sĩ'),
-- ('Phân tích dữ liệu', 'Học xong lên chùa làm thầy'),
-- ('Học làm Tester', 'Học xong đi làm nền'),
-- ('Học làm Hacker', 'Học xong đi hack facebook'),
-- ('An Ninh Mạng', 'Học xong đi làm bảo vệ');

-- create table TablePoint(
-- PointID int auto_increment primary key,
-- CourseID int not null,
-- StudentID int not null,
-- StudyPoint double,
-- foreign key (CourseID) references Course(CourseID),
-- foreign key (StudentID) references student(StudentID)
-- );

-- insert into tablepoint(CourseID, StudentID, StudyPoint)
-- values (1, 21, 87.5),
-- (2, 22, 83.65),
-- (3, 23, 75.5),
-- (4, 24, 74.3),
-- (5, 25, 56.4),
-- (6, 26, 75.6),
-- (7, 27, 64.5),
-- (6, 28, 68.7),
-- (5, 29, 65.1),
-- (1, 30, 73.5);

-- select * from student_management.address
-- select * from student_management.Classes
-- select * from student_management.Student
-- select * from student_management.Course
select * from student_management.TablePoint
