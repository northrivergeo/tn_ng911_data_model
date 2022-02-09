/* Duplicate Points */
create view qaqc.duplicate_address_geom as (

select
  row_number() OVER (PARTITION BY TRUE) as id,
  a.oirid,
  a.geom,
  a.address
from
  tn911.address_points as b,
  tn911.address_points as a
where
  st_equals(a.geom, b.geom) and a.id > b.id);

/* Duplicate Point Names */

create view qaqc.duplicate_address_name as (

select
  row_number() OVER (PARTITION BY TRUE) as id,
  a.oirid,
  a.geom,
  a.address
from
  tn911.address_points as b,
  tn911.address_points as a
where
  b.address = a.address and a.id > b.id);

/* Find Wrong ESN */ 

create view qaqc.esn_mismatch_address as (

-- had to changed e.esn on line 42 to "as esn2" since there was a SQL error preventing script to execute due to column duplicates. 
select
   a.geom,
   a.oirid,
   a.esn,
   a.addr_esn,
   e.esn as esn2
from
   tn911.address_points as a
inner join
   tn911.esn_boundary as e on
   st_intersects(a.geom, e.geom)
where
   a.esn != e.esn);
