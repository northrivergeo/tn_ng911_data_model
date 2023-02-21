/*Create an index on the three layers*/
create index tn911_centerlines_geom_idx 
on tn911.centerlines 
using gist (geom); 

create index tn911_address_points_geom_idx 
on tn911.address_points 
using gist (geom); 

create index tn911_esn_geom_idx 
on tn911.esn_boundary 
using gist (geom); 
