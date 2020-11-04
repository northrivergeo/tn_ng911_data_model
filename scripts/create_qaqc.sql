/* Duplicate Points */
create view qaqc.duplicate_address_geom as (

select
  row_number() OVER (PARTITION BY TRUE) as id,
  a.oirid,
  a.geom,
  a.address
from
  tn911.addresspoints as b,
  tn911.addresspoints as a
where
  st_equals(a.geom, b.geom) and a.id > b.id);

create view qaqc.duplicate_address_name as

/* Duplicate Point Names */

create view qaqc.duplicate_address_name as (

select
  row_number() OVER (PARTITION BY TRUE) as id,
  a.oirid,
  a.geom,
  a.address
from
  tn911.addresspoints as b,
  tn911.addresspoints as a
where
  b.address = a.address and a.id > b.id);

/* Find Wrong ESN */ 

create view qaqc.esn_mismatch_address as (

select
   a.geom,
   a.oirid,
   a.esn,
   a.addr_esn,
   e.esn
from
   ng911.addresspoints as a
inner join
   ng911.esn_boundary as e on
   st_intersects(a.geom, e.geom)
where
   a.esn != e.esn);


