The TN Standard has a attribute for elevation that is in meters. 

To make life easier - we will load the TN DEM into the database using raster2pgsql. This command makes a SQL file to load.  

     raster2pgsql -C -I -M -F -Y -s 6576 -t 100x100 -l 5 dem.tif dem > dem.sql 

To load it: 
  
     psql -d tndemo -U user -H host -f dem.sql 

TN LIDAR data can be acquired from https://lidar.tn.gov/  


