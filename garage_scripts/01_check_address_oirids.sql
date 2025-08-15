set search_path = 'garage', 'tn911', 'public';

DROP TABLE IF EXISTS check_address_oirid_tbl;
CREATE TABLE check_address_oirid_tbl as (
select
    oirid,
    count(*)
from
    address_points
group by
    oirid
order by
    count asc);

