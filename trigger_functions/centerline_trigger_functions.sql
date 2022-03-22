--Updates attdate in centerline table

CREATE OR REPLACE FUNCTION centerline_attdate()
RETURNS TRIGGER AS $$ 
BEGIN 
   new.attdate = current_timestamp; 
   RETURN NEW; 
END; 
$$
LANGUAGE PLPGSQL; 

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

-- Updates geodate in centerlines table 

CREATE OR REPLACE FUNCTION centerlines_geodate()
RETURNS TRIGGER AS $$ 
BEGIN 
   NEW.oirid := ``HENRY_``||new.id;
   NEW.editor = current_user; 
   NEW.geodate = current_timestamp; 
   RETURN NEW;
END; 
$$
LANGUAGE PLPGSQL; 

CREATE TRIGGER update_centerlines_geodate before insert or update 
   on tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE 
   centerlines_geodate();  

/*centerlines segid*/ 

CREATE OR REPLACE FUNCTION centerlines_segid()
RETURNS TRIGGER AS $$ 
BEGIN 
   NEW.segid := new.id;
   RETURN NEW;
END; 
$$
LANGUAGE PLPGSQL; 

CREATE TRIGGER update_centerlines_segid before insert or update 
   on tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE 
   centerlines_segid();  

/*centerlines street*/ 
CREATE OR REPLACE FUNCTION centerlines_street_func()
RETURNS TRIGGER AS $$
BEGIN
  NEW.label := concat_ws(' ', new.predir, new.pretype, new.name, new.type, new.sufdir);
RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;

CREATE TRIGGER update_centerlines_street BEFORE insert or update
    ON tn911.centerlines FOR EACH ROW EXECUTE PROCEDURE
    centerlines_street_func();
    



