--Updates attdate column in address_points

CREATE OR REPLACE FUNCTION address_attdate()
RETURNS TRIGGER AS $$ 
BEGIN 
   new.attdate = current_timestamp; 
   RETURN NEW; 
END; 
$$
LANGUAGE PLPGSQL; 

CREATE TRIGGER update_address_attdate before update 
   on tn911.address_points FOR EACH ROW 
   WHEN (old.r_segid is distinct from new.a_segid OR
	 old.a_segid is distinct from new.a_segid OR
	 old.seg_side is distinct from new.seg_side OR 
	 old.gislink is distinct from new.gislink OR 
	 old.structype is distinct from new.structype OR 
	 old.stnum_h is distinct from new.stnum_h OR 
	 old.stnum_l is distinct from new.stnum_l OR 
	 old.stnum is distinct from new.stnum OR 
	 old.stnumsuf is distinct from new.stnumsuf OR 
	 old.building is distinct from new.building OR 
	 old.floor is distinct from new.floor OR 
	 old.unit_type is distinct from new.unit_type OR 
	 old.unit_num is distinct from new.unit_num OR 
	 old.predir is distinct from new.predir OR 
	 old.pretype is distinct from new.pretype OR 
	 old.name is distinct from new.name OR 
	 old.type is distinct from new.type OR 
	 old.sufdir is distinct from new.sufdir OR 
	 old.postmod is distinct from new.postmod OR 
	 old.subname is distinct from new.subname OR 
	 old.vanity is distinct from new.vanity OR 
	 old.zip is distinct from new.zip OR 
	 old.zip4 is distinct from new.zip4 OR 
	 old.city is distinct from new.city)
   EXECUTE PROCEDURE address_attdate();  

--Updates ESN in address_points table

 CREATE OR REPLACE FUNCTION address_esn_func()
 RETURNS TRIGGER AS $$ 
 BEGIN
    NEW.esn := (select esn from tn911.esn where st_within(new.geom, geom)); 
    RETURN NEW;
 END;
 $$
LANGUAGE PLPGSQL;
 
 CREATE TRIGGER address_esn 
 BEFORE insert or update
     ON tn911.address_points FOR EACH ROW 
     EXECUTE PROCEDURE address_esn_func();

--Updates geodate in address_points table

CREATE OR REPLACE FUNCTION address_geodate()
RETURNS TRIGGER AS $$ 
BEGIN 
   new.geodate = current_timestamp; 
   RETURN NEW; 
END; 
$$
LANGUAGE PLPGSQL; 

CREATE TRIGGER update_address_geodate before update 
   on tn911.address_points FOR EACH ROW 
   WHEN (old.geom is distinct from new.geom) 
   EXECUTE PROCEDURE address_geodate();  

/*address street label*/ 

CREATE OR REPLACE FUNCTION address_label_func()
RETURNS TRIGGER AS $$ 
BEGIN
   NEW.esn := (select esn from tn911.esn where st_within(new.geom, geom));
   NEW.address := concat_ws('' '', new.stnum, new.predir,  new.pretype,  new.name, new.type, new.sufdir,  new.postmod); 
   NEW.addr_esn := concat_ws('' '', new.address,  new.esn); 
   NEW.label := initcap(new.address); 
   RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER update_address_label BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_label_func();

/*address location*/ 

CREATE OR REPLACE FUNCTION address_location_func()
RETURNS TRIGGER AS $$ 
BEGIN
   NEW.x_sp := st_x(NEW.geom); 
   NEW.y_sp := st_y(NEW.geom); 
   NEW.lon  := st_x(st_transform(NEW.geom, 4326))::varchar(15); 
   NEW.lat  := st_y(st_transform(NEW.geom, 4326))::varchar(15);
   RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER update_address_location BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_location_func();


/*address oirid*/ 

CREATE OR REPLACE FUNCTION oirid_address_func()
RETURNS TRIGGER AS $$ 
BEGIN
   NEW.oirid := ``HENRY_``||new.id;
   NEW.editor = current_user; 
   NEW.gpsdate = current_timestamp;
   RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER update_address_oirid BEFORE insert
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    oirid_address_func();
