set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_status_tbl; 
CREATE TABLE check_address_status_tbl as (
select 
    status, 
    count(*)
from 
    address_points 
group by
    status
order by 
    count desc); 
