IF EXIST C:\OSGeo4W64\bin SET PATH=%PATH%;C:\OSGeo4W64\bin

ogr2ogr -f OpenFileGDB  TCStransport.gdb -nlt point  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.address_points" -nln address_points 
ogr2ogr -f OpenFileGDB  TCStransport.gdb -append -nlt linestring  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.centerlines" -nln centerlines 
ogr2ogr -f OpenFileGDB  TCStransport.gdb -append -nlt polygon  PG:"host=192.168.124.234 user=rjhale dbname=county911 password=9wikufi6" "tn911.esn_boundary" -nln esn_boundary


