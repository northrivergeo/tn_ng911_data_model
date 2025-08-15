set search_path = 'garage', 'tn911', 'public';

DROP TABLE IF EXISTS check_address_segside_tbl;
CREATE TABLE check_address_segside_tbl as (
select
    seg_side,
    count(*)
from
    address_points
group by
    segside 
order by
    count asc);

