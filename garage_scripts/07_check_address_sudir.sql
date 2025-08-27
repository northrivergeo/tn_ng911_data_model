set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_sufdir_tbl; 
CREATE TABLE check_address_sufdir_tbl as (
select 
    sufdir, 
    count(*) 
from 
    address_points 
group by
    sufdir
order by 
    count desc); 
