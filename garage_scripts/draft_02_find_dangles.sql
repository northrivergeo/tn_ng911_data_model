select 
   c.oirid 
   count(*)
from 
   tn911.centerlines as c, 
   (select st_buffer(d.geom, 10) as geom from tn911.dangles as d) as foo
where st_intersects(foo.geom, c.geom); 
