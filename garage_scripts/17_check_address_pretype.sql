set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_type_tbl; 
CREATE TABLE check_address_pretype_tbl as (
select 
    pretype, 
    count(*) 
from 
    address_points 
group by
    pretype
order by 
    pretype, count desc); 
