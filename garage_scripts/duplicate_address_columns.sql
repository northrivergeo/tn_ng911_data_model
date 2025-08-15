DROP TABLE IF EXISTS qaqc.duplicate_address_columns_tbl; 
create table qaqc.duplicate_address_columns_tbl as (
select  
     concat_ws( ' ',  pretype, stnum, stnumsuf, unit_num, predir, name, type, sufdir, postmod_osm) as checkaddress, 
     count(*) 
from tn911.address_points 
     group by checkaddress order by count desc); 

