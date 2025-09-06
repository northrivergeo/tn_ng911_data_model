set search_path = 'garage', 'tn911', 'public';

DROP TABLE IF EXISTS check_centerlines_oirid_tbl;
CREATE TABLE check_centerlines_oirid_tbl as (
select
    oirid,
    count(*)
from
    centerlines
group by
    oirid
order by
    count asc);

