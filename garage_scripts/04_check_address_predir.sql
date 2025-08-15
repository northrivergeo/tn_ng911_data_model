set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_predir_tbl; 
CREATE TABLE check_address_predir_tbl as (
select 
    predir, 
    count(*) 
from 
    address_points 
group by
    predir
order by 
    predir, count desc); 
