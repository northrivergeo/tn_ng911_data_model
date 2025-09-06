set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_city_tbl; 
CREATE TABLE check_address_city_tbl as (
select 
    city, 
    count(*) 
from 
    address_points 
group by
    city
order by 
    count desc); 
