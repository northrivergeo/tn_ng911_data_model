**Finding ESN that's don't match**

select
   a.esn,
   a.oirid
from
   tn911.address_points as a
join tn911.esn as e
   on st_dwithin(a.geom, e.geom, 0)
   where a.esn <> e.esn;
