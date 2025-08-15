/*here we are looking for duplicate geometry on the addresses*/ 

SELECT
    a.oirid
FROM 
    tn911.centerlines b,
    tn911.centerlines a
WHERE a.geom = b.geom AND a.id > b.id group by a.id;

