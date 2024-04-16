use minitest;

-- SELECT thanh_pho.CityName, count(t.TourID) as 'Số Lượng Tour'
-- FROM citys as thanh_pho
-- left join touristdestinations as diem_den on thanh_pho.CityID = diem_den.CityID
-- left join tours as t on diem_den.DestinationID = t.DestinationID
-- group by thanh_pho.CityName;

-- select count(*) as 'Số Lượng Tour có ngày bắt đầu trong tháng 3 năm 2020'
-- from tours
-- where year(DayStart) = 2020 and month(DayStart) = 3;

-- select count(*) as 'Số Lượng Tour có ngày kết thúc trong tháng 4 năm 2020'
-- from tours
-- where year(DayEnd) = 2020 and month(DayEnd) = 3;