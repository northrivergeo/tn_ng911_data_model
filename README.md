# TN NG911 Database 

The State of TN has a NG911 implementation that came before the NENA standard. While this work typcailly inhabits an ESRI environment I've moved one county to a PostGIS/QGIS Solution. In the spirit of open - here is what I've done. 

This work follows the TN Standard - so if you're not in Tn I would suggest the NENA standard. 

## To Get this working 

* If you want to run this in docker please build the docker image - I've listed the steps under the docker directory. You can run this in a regular install of PostgreSQL/PostGIS 

* Run the create_tables.sql script under script to get the three tables 

* Run the create_qgis_form_tables.sql to get the tables that will feed the QGIS Forms 

* Run the create_functions.sql script to build the triggers that will be used. 

* More Coming...........




If you need support contact me either up here or at rjhale@northrivergeographic.com
