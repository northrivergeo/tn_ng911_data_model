set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_centerlines_predir_tbl; 
CREATE TABLE check_centerlines_predir_tbl as (
select 
    predir, 
    count(*) 
from 
    centerlines 
group by
    predir
order by 
    predir, count desc); 
