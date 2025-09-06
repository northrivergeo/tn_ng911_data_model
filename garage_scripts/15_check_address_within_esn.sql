set search_path = 'garage', 'tn911', 'public'; 

DROP TABLE IF EXISTS check_esn_addressmatch_tbl; 
create table check_esn_addressmatch_tbl as (
select
   a.esn,
   a.oirid
from
   address_points as a
join esn as e
   on st_within(e.geom, a.geom)
   where a.esn <> e.esn);

