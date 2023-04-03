IF EXIST C:\OSGeo4W64\bin SET PATH=%PATH%;C:\OSGeo4W64\bin

ogr2ogr -f GPKG  TCStransport.gpkg -nlt point  PG:"host=host user=user dbname=dbname password=pass" "tn911.address_points" 
ogr2ogr -f GPKG  TCStransport.gpkg -append -nlt linestring  PG:"host=host user=user dbname=dbname password=pass" "tn911.centerlines" 
ogr2ogr -f GPKG  TCStransport.gpkg -append -nlt polygon  PG:"host=host user=user dbname=dbname password=pass" "tn911.esn_boundary" 


