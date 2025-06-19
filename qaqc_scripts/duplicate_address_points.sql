/*here we are looking for duplicate geometry on the addresses*/ 

SELECT
    a.oirid,
FROM 
    tn911.address_points b,
    tn911.address_points a
WHERE st_intersects(a.geom, b.geom) AND a.id > b.id group by a.id;

