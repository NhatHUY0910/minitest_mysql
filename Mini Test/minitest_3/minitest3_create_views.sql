use store_management;

create view vw_CTPNHAP as
select pn.so_phieu_nhap, vt.ma_vat_tu, ct_pn.so_luong_nhap, ct_pn.don_gia_nhap, (ct_pn.so_luong_nhap * ct_pn.don_gia_nhap) as 'Thành Tiền Nhập'
from  phieu_nhap pn
join ct_phieu_nhap ct_pn on pn.phieu_nhap_id = ct_pn.phieu_nhap_id
join vat_tu vt on ct_pn.vat_tu_id = vt.vat_tu_ID;


create view vw_CTPNHAP_VT as
select pn.so_phieu_nhap, vt.ma_vat_tu, vt.ten_vat_tu, ct_pn.so_luong_nhap, ct_pn.don_gia_nhap, (ct_pn.so_luong_nhap * ct_pn.don_gia_nhap) as 'Thành Tiền Nhập'
from phieu_nhap pn 
join ct_phieu_nhap ct_pn on pn.phieu_nhap_id = ct_pn.phieu_nhap_id
join vat_tu vt on ct_pn.vat_tu_id = vt.vat_tu_ID;


create view vw_CTPNHAP_VT_PN as
select pn.so_phieu_nhap, pn.ngay_nhap, ddh.ma_don_hang, vt.ma_vat_tu, vt.ten_vat_tu, ctpn.so_luong_nhap, ctpn.don_gia_nhap, (ctpn.so_luong_nhap * ctpn.don_gia_nhap) as 'Thành Tiền Nhập'
from phieu_nhap pn
join Don_dat_hang ddh on pn.ddh_id = ddh.ddh_id
join CT_Phieu_nhap ctpn on pn.phieu_nhap_id = ctpn.phieu_nhap_id
join Vat_tu vt on ctpn.vat_tu_id = vt.vat_tu_ID;


create view vw_CTPNHAP_VT_PN_DH as
select pn.so_phieu_nhap, pn.ngay_nhap, ddh.ma_don_hang, ncc.ma_nha_cung_cap, vt.ma_vat_tu, vt.ten_vat_tu, ctpn.so_luong_nhap, ctpn.don_gia_nhap, (ctpn.so_luong_nhap * ctpn.don_gia_nhap) as 'Thành Tiền Nhập'
from phieu_nhap pn
join Don_dat_hang ddh on pn.ddh_id = ddh.ddh_id
join CT_Phieu_nhap ctpn on pn.phieu_nhap_id = ctpn.phieu_nhap_id
join Vat_tu vt on ctpn.vat_tu_id = vt.vat_tu_ID 
join nha_cung_cap ncc on ddh.ncc_id = ncc.ncc_id;


create view vw_CTPNHAP_loc as
select pn.so_phieu_nhap, vt.ma_vat_tu, ctpn.so_luong_nhap, ctpn.don_gia_nhap, (ctpn.so_luong_nhap * ctpn.don_gia_nhap) as 'Thành Tiền Nhập'
from phieu_nhap pn
join ct_phieu_nhap ctpn on pn.phieu_nhap_id = ctpn.phieu_nhap_id
join vat_tu vt on ctpn.vat_tu_id = vt.vat_tu_ID
where ctpn.so_luong_nhap > 5;


create view vw_CTPNHAP_VT_loc as
select pn.so_phieu_nhap, vt.ma_vat_tu, vt.ten_vat_tu, ctpn.so_luong_nhap, ctpn.don_gia_nhap, (ctpn.so_luong_nhap * ctpn.don_gia_nhap) as 'Thành Tiền Nhập'
from phieu_nhap pn
join ct_phieu_nhap ctpn on pn.phieu_nhap_id = ctpn.phieu_nhap_id
join vat_tu vt on ctpn.vat_tu_id = vt.vat_tu_ID
where vt.don_vi_tinh like 'cái';


create view vw_CTPXUAT as
select sum(ctpx.CT_px_id) as 'Số Phiếu Xuất Hàng', vt.ma_vat_tu , ctpx.so_luong_xuat, ctpx.don_gia_xuat, sum(ctpx.so_luong_xuat * ctpx.don_gia_xuat) as 'Thành Tiền Xuất'
from ct_phieu_xuat ctpx
join phieu_xuat px on ctpx.phieu_xuat_id = px.phieu_xuat_id
join vat_tu vt on ctpx.vat_tu_id = vt.vat_tu_ID
group by ctpx.CT_px_id, vt.ma_vat_tu, vt.ten_vat_tu;


create view vw_CTPXUAT_VT as
select sum(ctpx.CT_px_id) as 'Số Phiếu Xuất Hàng', vt.ma_vat_tu, vt.ten_vat_tu, ctpx.so_luong_xuat, ctpx.don_gia_xuat
from ct_phieu_xuat ctpx
join phieu_xuat px on ctpx.phieu_xuat_id = px.phieu_xuat_id
join vat_tu vt on ctpx.vat_tu_id = vt.vat_tu_ID
group by ctpx.CT_px_id, vt.ma_vat_tu, vt.ten_vat_tu;


create view vw_CTPXUAT_VT_PX as
select sum(ctpx.CT_px_id) as 'Số Phiếu Xuất Hàng', px.ten_khach_hang, vt.ma_vat_tu, vt.ten_vat_tu, ctpx.so_luong_xuat, ctpx.don_gia_xuat
from ct_phieu_xuat ctpx
join phieu_xuat px on ctpx.phieu_xuat_id = px.phieu_xuat_id
join vat_tu vt on ctpx.vat_tu_id = vt.vat_tu_ID
group by ctpx.CT_px_id, px.ten_khach_hang, vt.ma_vat_tu, vt.ten_vat_tu, ctpx.don_gia_xuat;


-- SELECT * FROM store_management.vw_ctpnhap;
-- SELECT * FROM store_management.vw_ctpnhap_vt;
-- SELECT * FROM store_management.vw_ctpnhap_vt_pn;
-- SELECT * FROM store_management.vw_CTPNHAP_VT_PN_DH;
-- SELECT * FROM store_management.vw_CTPNHAP_loc;
-- SELECT * FROM store_management.vw_CTPNHAP_VT_loc;
-- SELECT * FROM store_management.vw_ctpxuat;
-- SELECT * FROM store_management.vw_ctpxuat_vt;
-- SELECT * FROM store_management.vw_CTPXUAT_VT_PX;

