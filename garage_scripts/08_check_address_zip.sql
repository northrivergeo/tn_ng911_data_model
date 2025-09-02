set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_zip_tbl; 
CREATE TABLE check_address_zip_tbl as (
select 
    zip, 
    count(*) 
from 
    address_points 
group by
    zip
order by 
    count desc); 
