--remove functions on tn911.address_points

DROP TRIGGER create_address_attdate on tn911.address_points;
DROP TRIGGER create_address_attdate on tn911.address_points;
DROP TRIGGER update_address_attdate on tn911.address_points;
DROP TRIGGER update_address_geodate on tn911.address_points;
DROP TRIGGER update_address_label on tn911.address_points;
DROP TRIGGER update_address_location on tn911.address_points;
DROP TRIGGER update_address_oirid on tn911.address_points;

DROP FUNCTION tn911.address_attdate; 
DROP FUNCTION tn911.address_esn_func; 
DROP FUNCTION tn911.address_geodate; 
DROP FUNCTION tn911.address_label_func; 
DROP FUNCTION tn911.address_location_func; 
DROP FUNCTION tn911.address_func_oirid; 


DROP FUNCTION tn911.centerlines_attdate; 
DROP FUNCTION tn911.centerlines_geodate; 
DROP FUNCTION tn911.centerlines_segid; 
DROP FUNCTION tn911.centerlines_street_func; 
DROP FUNCTION tn911.esn_geodate; 
DROP FUNCTION tn911.esn_oirid_func; 
DROP FUNCTION tn911.oirid_address_func; 
