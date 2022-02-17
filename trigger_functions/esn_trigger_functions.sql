/*update esn*/ 
CREATE OR REPLACE FUNCTION esn_oirid_func()
RETURNS TRIGGER AS $$ 
BEGIN
   NEW.oirid := ''HENRY_''||new.id;
   NEW.editor = current_user; 
   NEW.gpsdate = current_timestamp;
   RETURN NEW;
END;
$$
LANGUAGE 'PLPGSQL';

CREATE TRIGGER update_esn_oirid BEFORE insert
    ON tn911.esn_boundary FOR EACH ROW EXECUTE PROCEDURE
    esn_oirid_func();
