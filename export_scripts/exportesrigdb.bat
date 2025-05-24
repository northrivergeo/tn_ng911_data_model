IF  EXIST C:\OSGeo4W\bin SET PATH=%PATH%;C:\OSGeo4W\bin

ogr2ogr -f OpenFileGDB c:\path\to\export\Template_TCSTransport.gdb c:\path\to\upload\TCSTransport.gdb

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb -nln "Addresses" PG:"host=host user=user dbname=dbname password=password" "tn911.addresses" -nln "addresses"

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb -nln "Centerlines" PG:"host=host user=user dbname=dbname password=password" "tn911.centerlines" -nln "centerlines"

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb -nln "ESN" PG:"host=host user=user dbname=dbname password=password" "tn911.esn_boundary" -nln "esn_boundary"

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb PG:"host=host user=user dbname=dbname password=password"  "tn911.esb_law" -nln "esb_law"

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb PG:"host=host user=user dbname=dbname password=password"  "tn911.esb_fire" -nln "esb_fire"

ogr2ogr -f OpenFileGDB -append C:\TCSTransport\Upload\TCSTransport.gdb PG:"host=host user=user dbname=dbname password=password"  "tn911.esb_ems" -nln "esb_ems"

