-- ST_LineLocatePoint
-- Does the closest point fit the address range on the street (double bonus I also check left and right).
-- ST_Makeline to join the spot closest to the street to the address point.


select
    a.oirid,
    ST_LineInterpolatePoint(ST_GeometryN(c.geom,1), (ST_LineLocatePoint(st_GeometryN(c.geom,1), a.geom))) as geom
from
    tn911.address_points as a
    join tn911.centerlines as c on concat_ws(' ', a.name, a.esn) = concat_ws(' ', c.name, c.esn_l)
    where a.stnum::int between c.l_f_add::int and c.l_t_add::int and addr_esn = '1107 GREENVALLEY DR 123'; 

------------------------------------------

select
   a.oirid, 
   a.stnum, 
   st_length(c.geom) as length
from
   tn911.address_points as a
   join tn911.centerlines as c on concat_ws(' ', a.name, a.esn) = concat_ws(' ', c.name, c.esn_l)
   where a.stnum::int between c.l_f_add::int and c.l_t_add::int and addr_esn = '1107 GREENVALLEY DR 123';

------------------------------------------

select 
  foo.oirid, 
  foo.segid, 
  ST_LineInterpolatePoint(foo.geom, (foo.stnum/foo.length)) as geom
from ( select
       a.oirid, 
       a.stnum::int as stnum, 
       c.geom, 
       c.segid,
       st_length(c.geom) as length
     from
       tn911.address_points as a
       join tn911.centerlines as c on concat_ws(' ', a.name, a.esn) = concat_ws(' ', c.name, c.esn_l)
       where a.stnum::int between c.l_f_add::int and c.l_t_add::int and addr_esn = '1107 GREENVALLEY DR 123') as foo;

------------------------------------------

select 
  foo.oirid, 
  foo.segid, 
  foo.stnum, 
  foo.lfnum, 
  foo.ltnum,
  (foo.ltnum-foo.lfnum) as range, 
  foo.length,
  
from ( select
       a.oirid, 
       l_f_add::int as lfnum, 
       l_t_add::int as ltnum,
       a.stnum::int as stnum, 
       c.geom, 
       c.segid,
       st_length(c.geom) as length
     from
       tn911.address_points as a
       join tn911.centerlines as c on concat_ws(' ', a.name, a.esn) = concat_ws(' ', c.name, c.esn_l)
       where a.stnum::int between c.l_f_add::int and c.l_t_add::int and (l_t_add::int-l_f_add::int)>0) as foo;

------------------------------------------

