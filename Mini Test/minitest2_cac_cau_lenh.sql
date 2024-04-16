use student_management;

-- select * from student where Fullname like 'Nguyen%';
-- select * from student where Fullname like '%Anh';
-- select * from student where age between 18 and 25;
-- select * from student where StudentID in (12, 13);

-- Thống kê số lượng học viên các lớp:
-- select lop_hoc.ClassName, count(hoc_vien.StudentID) as 'Số Lượng Học Viên'
-- from classes lop_hoc
-- left join student hoc_vien on lop_hoc.ClassID = hoc_vien.ClassID
-- group by lop_hoc.ClassID;

-- Thống kê số lượng học viên tại các tỉnh:
-- select dia_chi.Address, count(hoc_vien.StudentID) as 'Số Lượng Học Viên'
-- from address dia_chi
-- left join student hoc_vien on dia_chi.AddressID = hoc_vien.AddressID
-- group by dia_chi.AddressID;

-- Tính điểm trung bình của các khóa học:
-- select khoa_hoc.CourseName, avg(diem.StudyPoint) as 'Điểm Trung Bình'
-- from course khoa_hoc
-- left join tablepoint diem on khoa_hoc.CourseID = diem.CourseID
-- group by khoa_hoc.CourseID;

-- Lấy ra điểm cao nhất, thấp nhất:
-- select max(StudyPoint) as 'Điểm Cao Nhất', min(StudyPoint) as 'Điểm Thấp Nhất'
-- from tablepoint;

-- Lấy ra danh sách học sinh, chuyển đổi tên học sinh thành chữ hoa:
-- select upper(Fullname) as 'Tên Học Viên Viết Hoa'
-- from student;

-- select * from student_management.address
-- select * from student_management.Classes
-- select * from student_management.Student
-- select * from student_management.Course
-- select * from student_management.TablePoint
