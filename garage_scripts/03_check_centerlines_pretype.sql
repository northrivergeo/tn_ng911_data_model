set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_centerlines_type_tbl; 
CREATE TABLE check_centerlines_pretype_tbl as (
select 
    pretype, 
    count(*) 
from 
    centerlines 
group by
    pretype
order by 
    pretype, count desc); 
