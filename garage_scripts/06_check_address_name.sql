set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_type_tbl; 
CREATE TABLE check_address_type_tbl as (
select 
    name, 
    count(*) 
from 
    address_points 
group by
    name
order by 
    count desc); 
