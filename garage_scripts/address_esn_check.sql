/* check address ESN against ESN Polygon. Eventually this goes to 0 because of the triggers*/ 
set search_path = garage, tn911, public, "$user"; 
DROP TABLE IF EXISTS esn_addressmatch_tbl; 
create table esn_addressmatch_tbl as (
select
   a.esn,
   a.oirid
from
   address_points as a
join esn as e
   on st_within(e.geom, a.geom)
   where a.esn <> e.esn);

