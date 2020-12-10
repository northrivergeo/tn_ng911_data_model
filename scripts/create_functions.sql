/*address attdate*/

CREATE OR REPLACE FUNCTION address_attdate()
RETURNS TRIGGER AS ' 
BEGIN 
   new.attdate = current_timestamp; 
   RETURN NEW; 
END; 
' language 'plpgsql'; 

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

/*address esn*/

CREATE OR REPLACE FUNCTION address_esn_func()
RETURNS TRIGGER AS ' 
BEGIN
   NEW.esn := (select esn from tn911.esn where st_within(new.geom, geom)); 
   RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER address_esn BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_esn_func();

/*address geodate*/

CREATE OR REPLACE FUNCTION address_geodate()
RETURNS TRIGGER AS ' 
BEGIN 
   new.geodate = current_timestamp; 
   RETURN NEW; 
END; 
' language 'plpgsql'; 

CREATE TRIGGER update_address_geodate before update 
   on tn911.address_points FOR EACH ROW 
   WHEN (old.geom is distinct from new.geom) 
   EXECUTE PROCEDURE address_geodate();  

/*address street label*/ 

CREATE OR REPLACE FUNCTION address_label_func()
RETURNS TRIGGER AS ' 
BEGIN
   NEW.esn := (select esn from tn911.esn where st_within(new.geom, geom));
   NEW.address := concat_ws('' '', new.stnum, new.predir,  new.pretype,  new.name, new.type, new.sufdir,  new.postmod); 
   NEW.addr_esn := concat_ws('' '', new.address,  new.esn); 
   NEW.label := initcap(new.address); 
   RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER update_address_label BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_label_func();

/*address location*/ 

CREATE OR REPLACE FUNCTION address_location_func()
RETURNS TRIGGER AS ' 
BEGIN
   NEW.x_sp := st_x(NEW.geom); 
   NEW.y_sp := st_y(NEW.geom); 
   NEW.lon  := st_x(st_transform(NEW.geom, 4326))::varchar(15); 
   NEW.lat  := st_y(st_transform(NEW.geom, 4326))::varchar(15);
   RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER update_address_location BEFORE insert or update
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    address_location_func();

/*address oirid*/ 

CREATE OR REPLACE FUNCTION oirid_address_func()
RETURNS TRIGGER AS ' 
BEGIN
   NEW.oirid := ''HENRY_''||new.id;
   NEW.editor = current_user; 
   NEW.gpsdate = current_timestamp;
   RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER update_address_oirid BEFORE insert
    ON tn911.address_points FOR EACH ROW EXECUTE PROCEDURE
    oirid_address_func();

/*centerlines attdate*/ 

CREATE OR REPLACE FUNCTION centerline_attdate()
RETURNS TRIGGER AS ' 
BEGIN 
   new.attdate = current_timestamp; 
   RETURN NEW; 
END; 
' language 'plpgsql'; 

CREATE TRIGGER update_centerlines before update 
   on tn911.centerlines FOR EACH ROW 
   WHEN (old.l_f_add is distinct from new.l_f_add OR
	 old.l_t_add is distinct from new.l_t_add OR
	 old.r_f_add is distinct from new.r_f_add OR 
	 old.r_t_add is distinct from new.r_t_add OR 
	 old.addr_type is distinct from new.addr_type OR 
	 old.predir is distinct from new.predir OR 
	 old.pretype is distinct from new.pretype OR 
	 old.name is distinct from new.name OR 
	 old.type is distinct from new.type OR 
	 old.sufdir is distinct from new.sufdir OR 
	 old.postmod is distinct from new.postmod OR 
	 old.label is distinct from new.label OR 
	 old.subname is distinct from new.subname OR 
	 old.vanity is distinct from new.vanity OR 
	 old.subname is distinct from new.subname OR 
	 old.nametype is distinct from new.nametype OR 
	 old.cfcc is distinct from new.cfcc OR 
	 old.esn_l is distinct from new.esn_l OR
	 old.esn_r is distinct from new.esn_r OR
	 old.zip_l is distinct from new.zip_l OR
	 old.zip_r is distinct from new.zip_r OR
	 old.city_l is distinct from new.city_l OR
	 old.city_r is distinct from new.city_r OR
	 old.county_l is distinct from new.county_l OR
	 old.county_r is distinct from new.county_r OR
	 old.state_l is distinct from new.state_l OR
	 old.state_r is distinct from new.state_r OR
	 old.spdlimit is distinct from new.spdlimit OR
	 old.oneway is distinct from new.oneway OR 
	 old.lanes is distinct from new.lanes OR 
	 old.t_elev is distinct from new.t_elev OR 
	 old.f_elev is distinct from new.f_elev OR 
	 old.ftcost is distinct from new.ftcost OR 
	 old.tfcost is distinct from new.tfcost OR 
	 old.tfcost is distinct from new.tfcost)
   EXECUTE PROCEDURE address_attdate();  

/*centerlines geodate*/ 

CREATE OR REPLACE FUNCTION centerlines_geodate()
RETURNS TRIGGER AS ' 
BEGIN 
   NEW.oirid := ''HENRY_''||new.id;
   NEW.editor = current_user; 
   NEW.geodate = current_timestamp; 
   RETURN NEW;
END; 
' language 'plpgsql'; 

CREATE TRIGGER update_centerlines_geodate before insert or update 
   on tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE 
   centerlines_geodate();  

/*centerlines segid*/ 

CREATE OR REPLACE FUNCTION centerlines_segid()
RETURNS TRIGGER AS ' 
BEGIN 
   NEW.segid := ''HENRY_''||new.id;
   RETURN NEW;
END; 
' language 'plpgsql'; 

CREATE TRIGGER update_centerlines_segid before insert or update 
   on tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE 
   centerlines_segid();  

/*centerlines street*/ 
CREATE OR REPLACE FUNCTION centerlines_street_func()
RETURNS TRIGGER AS '
BEGIN
  NEW.label := concat_ws('''', new.predir, new.pretype, new.name, new.type, new.sufdir);
RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER update_centerlines_street BEFORE insert or update
    ON tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE
    centerlines_street_func();
    

/*update esn*/ 
CREATE OR REPLACE FUNCTION oirid_esn_func()
RETURNS TRIGGER AS ' 
BEGIN
   NEW.oirid := ''HENRY_''||new.id;
   NEW.editor = current_user; 
   NEW.gpsdate = current_timestamp;
   RETURN NEW;
END;
' language 'plpgsql';

CREATE TRIGGER update_esn_oirid BEFORE insert
    ON tn911.esn FOR EACH ROW EXECUTE PROCEDURE
    oirid_address_func();


