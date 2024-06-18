--drop triggers on tn911.address_points
drop trigger IF EXISTS update_address_esn on tn911.address_points; 
drop trigger IF EXISTS notify_qgis_address_edit on tn911.address_points; 
drop trigger IF EXISTS update_address_attdate on tn911.address_points; 
drop trigger IF EXISTS update_address_label on tn911.address_points; 
drop trigger IF EXISTS update_address_location on tn911.address_points; 
drop trigger IF EXISTS update_address_oirid on tn911.address_points; 
drop trigger IF EXISTS update_address_geodate on tn911.address_points; 

--drop triggers on tn911.centerlines
drop trigger IF EXISTS update_centerlines_attdate on tn911.centerlines; 
drop trigger IF EXISTS notify_qgis_centerlines_edit on tn911.centerlines; 
drop trigger IF EXISTS update_centerlines_oirid on tn911.centerlines; 
drop trigger IF EXISTS update_centerlines_segid on tn911.centerlines; 
drop trigger IF EXISTS update_centerlines_street on tn911.centerlines; 

--drop trigger on esn
drop trigger IF EXISTS notify_qgis_esn_edit on tn911.esn; 
drop trigger IF EXISTS update_esn_geodate on tn911.esn; 


