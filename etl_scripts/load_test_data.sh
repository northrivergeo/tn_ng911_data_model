#If you need to load some test data quickly
#just run this 
#change your username and password and make sure your path is correct

ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=user dbname=tndemo password=password schemas=tn911" ../data/streets.shp -nln tn911.centerlines -nlt linestring -skipfailures
ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=user dbname=tndemo password=password schemas=tn911" ../data/address_points.shp -nln tn911.address_points -nlt point -skipfailures
ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=user dbname=tndemo password=password schemas=tn911" ../data/esn_area.shp -nln tn911.esn_boundary -skipfailures

