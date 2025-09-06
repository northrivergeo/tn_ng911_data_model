set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_centerlines_type_tbl; 
CREATE TABLE check_centerlines_type_tbl as (
select 
    name, 
    count(*) 
from 
    centerlines
group by
    name
order by 
    count desc); 
