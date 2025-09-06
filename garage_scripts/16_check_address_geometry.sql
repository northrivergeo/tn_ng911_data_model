/*here we are looking for duplicate geometry on the addresses*/ 
set search_path = 'garage', 'tn911', 'public';

DROP TABLE IF EXISTS check_address_geometry_tbl; 
CREATE TABLE check_address_Geometry_tbl as (
SELECT
    a.oirid
FROM 
    address_points b,
    address_points a
WHERE  a.geom = b.geom AND a.id > b.id group by a.id);

