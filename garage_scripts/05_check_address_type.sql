set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_type_tbl; 
CREATE TABLE check_address_type_tbl as (
select 
    type, 
    count(*) 
from 
    address_points 
group by
    type
order by 
    type, count desc); 
