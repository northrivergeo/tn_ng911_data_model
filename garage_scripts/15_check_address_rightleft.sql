set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_leftright_tbl; 
CREATE TABLE check_address_leftright_tbl as (
select 
    right_left, 
    count(*)
from 
    address_points 
group by
    right_left
order by 
    count desc); 
