set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_city_zip_tbl; 
CREATE TABLE check_address_city_zip_tbl as (
select 
    city, 
    zip
from 
    address_points 
group by
    city
order by 
    city desc); 
