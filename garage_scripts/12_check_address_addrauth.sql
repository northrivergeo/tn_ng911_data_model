set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_address_addrauth_tbl; 
CREATE TABLE check_address_addrauth_tbl as (
select 
    addrauth, 
    count(*)
from 
    address_points 
group by
    addrauth
order by 
    count desc); 
