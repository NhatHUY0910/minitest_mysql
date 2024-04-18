-- create database store_management;

use store_management;

create table vat_tu(
vat_tu_ID int auto_increment primary key,
ma_vat_tu varchar(50),
ten_vat_tu varchar(255),
don_vi_tinh varchar(20),
gia_tien double
);
insert into vat_tu (ma_vat_tu, ten_vat_tu, don_vi_tinh, gia_tien) 
values ('VT001', 'máy khoan', 'cái', 6.5),
('VT002', 'búa', 'cái', 2.25),
('VT003', 'đinh', 'cái', 0.5),
('VT004', 'gỗ', 'Kg', 70.99),
('VT005', 'xi măng', 'kg', 60.99);


create table ton_kho(
ton_kho_ID int auto_increment primary key,
vat_tu_id int,
so_luong_dau int,
tong_so_luong_nhap int,
tong_so_luong_xuat int,
foreign key (vat_tu_id) references vat_tu(vat_tu_id)
);
insert into ton_kho (vat_tu_id, so_luong_dau, tong_so_luong_nhap, tong_so_luong_xuat) 
values (1, 50, 50, 45),
(2, 100, 100, 90),
(3, 500, 1000, 800),
(4, 1000, 2000, 1700),
(5, 3000, 3000, 1500),
(1, 40, 1500, 1200),
(2, 150, 150, 100),
(3, 600, 900, 700),
(4, 900, 1500, 1200),
(5, 2700, 2700, 1600);


create table nha_cung_cap(
ncc_id int auto_increment primary key,
ma_nha_cung_cap varchar(50),
ten_nha_cung_cap varchar(255),
dia_chi varchar(255),
so_dien_thoai int
);
insert into nha_cung_cap (ma_nha_cung_cap, ten_nha_cung_cap, dia_chi, so_dien_thoai) 
values ('NCC001', 'Trách Nhiệm Hữu Hạn', 'Hà Nội', '0987654321'),
('NCC002', 'Trách Nhiệm Vô Hạn', 'Tokyo', '0912345678'),
('NCC003', 'Một Thành Viên', 'New York', '0905678901');


create table don_dat_hang (
  ddh_id int auto_increment primary key,
  ma_don_hang varchar(50),
  ngay_dat_hang date,
  ncc_id INT,
  foreign key (ncc_id) references nha_cung_cap(ncc_id)
);
insert into don_dat_hang (ma_don_hang, ngay_dat_hang, ncc_id) 
values ('DH001', '2023-07-06', 1),
('DH002', '2022-03-10', 2),
('DH003', '2024-01-15', 3);


create table phieu_nhap(
phieu_nhap_id int auto_increment primary key,
so_phieu_nhap int,
ngay_nhap date,
ddh_id int,
foreign key (ddh_id) references don_dat_hang(ddh_id)
);
insert into phieu_nhap (so_phieu_nhap, ngay_nhap, ddh_id) 
values (10, '2023-07-15', 1),
(11, '2022-04-12', 2),
(12, '2024-01-18', 3);


create table phieu_xuat(
phieu_xuat_id int auto_increment primary key,
ngay_xuat date,
ten_khach_hang varchar(255)
);
insert into phieu_xuat (ngay_xuat, ten_khach_hang) 
values ('2023-08-15', 'Đức Dark Deep'),
('2022-05-12', 'Trường Triển Chiêu'),
('2024-01-19', 'Quý Quỷ Quyệt');


create table CT_don_hang(
CT_dh_id int auto_increment primary key,
ddh_id int,
vat_tu_id int,
so_luong_dat int,
foreign key (ddh_id) references don_dat_hang(ddh_id),
foreign key (vat_tu_id) references vat_tu(vat_tu_id)
);
insert into  CT_don_hang (ddh_id, vat_tu_id, so_luong_dat) 
values (1, 1, 100),
(1, 2, 200),
(3, 3, 500),
(3, 4, 2000),
(2, 5, 1000),
(1, 5, 1200);


create table CT_phieu_nhap(
CT_pn_id int auto_increment primary key,
phieu_nhap_id int,
vat_tu_id int,
so_luong_nhap int,
don_gia_nhap double,
ghi_chu text,
foreign key (phieu_nhap_id) references phieu_nhap(phieu_nhap_id),
foreign key (vat_tu_id) references vat_tu(vat_tu_id)
);
insert into  CT_phieu_nhap (phieu_nhap_id, vat_tu_id, so_luong_nhap, don_gia_nhap, ghi_chu) 
values (1, 1, 450, 0.4, 'Mệt quá huhu 1'),
(1, 2, 280, 1.1, 'Mệt quá huhu 2'),
(2, 3, 750, 14, 'Mệt quá huhu 3'),
(2, 4, 180, 48, 'Mệt quá huhu 4'),
(3, 5, 380, 0.5, 'Mệt quá huhu 5');


create table CT_phieu_xuat (
  CT_px_id int auto_increment primary key,
  phieu_xuat_id int,
  vat_tu_id int,
  so_luong_xuat int,
  don_gia_xuat double,
  ghi_chu text,
  foreign key (phieu_xuat_id) references phieu_xuat(phieu_xuat_id),
  foreign key (vat_tu_id) references vat_tu(vat_tu_ID)
);
insert into  CT_phieu_xuat (phieu_xuat_id, vat_tu_id, so_luong_xuat, don_gia_xuat, ghi_chu) 
values (1, 1, 200, 0.6, 'Ghi chú 1'),
(1, 2, 100, 1.5, 'Ghi chú 2'),
(2, 3, 300, 18, 'Ghi chú 3'),
(2, 4, 80, 60, 'Ghi chú 4'),
(3, 1, 150, 0.7, 'Ghi chú 5'),
(3, 5, 50, 90, 'Ghi chú 6');


-- select * from vat_tu;
-- select * from ton_kho;
-- select * from nha_cung_cap;
-- select * from don_dat_hang;
-- select * from phieu_nhap;
-- select * from phieu_xuat;
-- select * from ct_don_hang;
-- select * from ct_phieu_nhap;
-- select * from ct_phieu_xuat;



