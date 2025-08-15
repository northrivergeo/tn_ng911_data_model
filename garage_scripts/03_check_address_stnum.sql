set search_path = 'garage', 'tn911', 'public';

DROP TABLE IF EXISTS check_address_stnum_tbl;
CREATE TABLE check_address_stnum_tbl as (
select
    oirid,
    count(*)
from
    address_points
group by
    a_segid
order by
    count asc);
