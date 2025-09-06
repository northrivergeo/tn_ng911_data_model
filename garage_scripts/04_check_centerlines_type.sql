set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_centerlines_type_tbl; 
CREATE TABLE check_centerlines_type_tbl as (
select 
    type, 
    count(*) 
from 
    centerlines 
group by
    type
order by 
    type, count desc); 
