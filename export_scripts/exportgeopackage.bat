IF EXIST C:\OSGeo4W64\bin SET PATH=%PATH%;C:\OSGeo4W64\bin

ogr2ogr -f GPKG  TCStransport.gpkg -nlt point  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.address_points" 
ogr2ogr -f GPKG  TCStransport.gpkg -append -nlt linestring  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.centerlines" 
ogr2ogr -f GPKG  TCStransport.gpkg -append -nlt polygon  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.esn_boundary" 


