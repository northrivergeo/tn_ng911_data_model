/*address elevation*/

CREATE OR REPLACE FUNCTION address_elev_func()
RETURNS TRIGGER AS $$
BEGIN
  NEW.z_val := (select round(st_value(rast, NEW.geom)/3.28081) from dem.henry_2017 WHERE ST_Intersects(rast, NEW.geom)=true);
  RETURN NEW; 
END; 
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER update_address_elev BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_elev_func();

