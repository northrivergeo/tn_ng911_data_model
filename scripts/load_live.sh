#If you need to load some test data quickly
#just run this 
#change your rjhalename and password and make sure your path is correct

ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=rjhale dbname=tndemo password=9wikufi6 schemas=tn911" ../data/streets.shp -nln tn911.centerlines -nlt linestring -skipfailures
ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=rjhale dbname=tndemo password=9wikufi6 schemas=tn911" ../data/address_points.shp -nln tn911.address_points -nlt point -skipfailures
ogr2ogr -update -append -f "PostgreSQL" -a_srs "EPSG:2274" PG:"host=localhost user=rjhale dbname=tndemo password=9wikufi6 schemas=tn911" ../data/esn_area.shp -nln tn911.esn -skipfailures

