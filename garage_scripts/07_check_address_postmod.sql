set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_postmod_tbl; 
CREATE TABLE check_address_posmod_tbl as (
select 
    postmod, 
    count(*) 
from 
    address_points 
group by
    postmod
order by 
    count desc); 
