set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_esn_tbl; 
CREATE TABLE check_address_esn_tbl as (
select 
    esn, 
    count(*) 
from 
    address_points 
group by
    esn
order by 
    count desc); 
