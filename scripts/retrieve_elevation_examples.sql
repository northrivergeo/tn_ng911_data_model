SELECT 
     a.oirid, 
     ST_Value(rast, st_transform(a.geom, 6576))/3.28081 val 
FROM 
     dem.henry_2017, 
     tn911.address_points as a  
WHERE 
ST_Intersects(rast, st_transform(a.geom, 6576)) and oirid = 'HENRY_6635'; 


SELECT 
     a.oirid, 
     ST_Value(st_transform(rast, 2274, 'Bilinear'), a.geom) val 
FROM 
     dem.henry_2017, 
     tn911.address_points as a  
WHERE 
ST_Intersects(st_transform(rast, 2274, 'Bilinear'), a.geom) and oirid = 'HENRY_6635'; 

SELECT 
     a.oirid, 
     round(ST_Value(rast, a.geom)/3.28081) val 
FROM 
     dem.henry_2017, 
     tn911.address_points as a  
WHERE 
ST_Intersects(rast, a.geom) and oirid = 'HENRY_6635'; 


update tn911.address_points set z_val = round(st_value(rast, a.geom)/3.28081) from dem.henry_2017,tn911.address_points as a WHERE ST_Intersects(rast, a.geom)=true;
