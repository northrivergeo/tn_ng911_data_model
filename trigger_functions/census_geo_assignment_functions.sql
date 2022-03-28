--updates each address point to add what county it intersects
CREATE FUNCTION address_county_assignment() 
   RETURNS TRIGGER
AS $$
BEGIN
   UPDATE tn911.address_points
   SET county = census.counties.name
   FROM census.counties
   WHERE address_points.county IS NULL AND ST_Intersects(address_points.geom, counties.geom);
     
   RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER address_county_assignment
   AFTER INSERT
   ON tn911.address_points
   FOR EACH STATEMENT
       EXECUTE PROCEDURE address_county_assignment();

--updates each address point to add what county it intersects
CREATE FUNCTION address_zip_assignment() 
   RETURNS TRIGGER
AS $$
BEGIN
   UPDATE tn911.address_points
   SET zip = census.zctas.zcta5ce20
   FROM census.zctas
   WHERE address_points.county IS NULL AND ST_Intersects(address_points.geom, zctas.geom);
     
   RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER address_zip_assignment
   AFTER INSERT
   ON tn911.address_points
   FOR EACH STATEMENT
       EXECUTE PROCEDURE address_zip_assignment();