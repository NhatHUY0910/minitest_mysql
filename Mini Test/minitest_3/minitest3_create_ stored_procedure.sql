use store_management;

delimiter $$
create procedure tong_so_luong_vat_tu (
	in sp_vat_tu_id int
)
begin 
	select (so_luong_dau + tong_so_luong_nhap - tong_so_luong_xuat) as 'Tổng Số Lượng Cuối'
	from ton_kho
	where vat_tu_id = sp_vat_tu_id;
end$$
delimiter ;

delimiter $$
create procedure sp_tong_tien_xuat (
	in sp_vat_tu_id int
)
begin
    select 
        sum(ctpn.so_luong_nhap * vat_tu.gia_tien) as 'Tổng Tiền Xuất'
    from CT_phieu_nhap ctpn
    join vat_tu on ctpn.vat_tu_id = vat_tu.vat_tu_ID
    where ctpn.vat_tu_id = sp_vat_tu_id;
end$$
delimiter ;

delimiter $$
create procedure tong_so_luong_theo_so_don_hang (
	in sp_ddh_id int
)
begin
    select 
        sum(CT_don_hang.so_luong_dat) as "Tổng Số Lượng Đặt"
    from CT_don_hang
    where CT_don_hang.ddh_id = sp_ddh_id;
end$$
delimiter ;

delimiter $$
create procedure them_don_hang(
    in sp_ma_don_hang varchar(255),
    in sp_ngay_dat_hang date,
    in sp_ncc_id int
)
begin
    insert into don_dat_hang (ma_don_hang, ngay_dat_hang, ncc_id)
	values (sp_ma_don_hang, sp_ngay_dat_hang, sp_ncc_id);
end$$
delimiter ;

delimiter $$
create procedure them_chi_tiet (
    in sp_ddh_id int,
    in sp_vat_tu_id int,
    in sp_so_luong_dat int
)
begin
    insert into CT_don_hang (ddh_id, vat_tu_id, so_luong_dat)
    values (sp_ddh_id, sp_vat_tu_id, sp_so_luong_dat);
end$$
delimiter ;

delimiter $$
create procedure xoa_nha_cung_cap (
	in sp_ncc_id int
)
begin
    update don_dat_hang
    set ncc_id = null
    WHERE ncc_id = sp_ncc_id;

    delete from nha_cung_cap
    where ncc_id = sp_ncc_id;
end$$
delimiter ;

