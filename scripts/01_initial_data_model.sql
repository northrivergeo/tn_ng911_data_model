/* qgis schema */ 

create schema tn911; 


/* qgis form for predir and reference*/ 

DROP TABLE IF EXISTS tn911.predir_tbl; 
create table tn911.predir_tbl (
       predir varchar(24) primary key,
        description varchar(2)
        );

insert into tn911.predir_tbl (predir, description) values ('N', 'N');
insert into tn911.predir_tbl (predir, description) values ('S', 'S');
insert into tn911.predir_tbl (predir, description) values ('E', 'E');
insert into tn911.predir_tbl (predir, description) values ('W', 'W');
insert into tn911.predir_tbl (predir, description) values ('NE', 'NE');
insert into tn911.predir_tbl (predir, description) values ('NW', 'NW');
insert into tn911.predir_tbl (predir, description) values ('SE', 'SE');
insert into tn911.predir_tbl (predir, description) values ('SW', 'SW');


/* qgis tables seg_side */ 

DROP TABLE IF EXISTS tn911.segside_tbl; 
create table tn911.segside_tbl (
        seg_side varchar(1) primary Key,
	description varchar(12)
        );

insert into tn911.segside_tbl (seg_side, description) values ('L', 'LEFT');
insert into tn911.segside_tbl (seg_side, description) values ('R', 'RIGHT');

/* qgis tables structure type */ 

DROP TABLE IF EXISTS tn911.strucdomain_tbl; 
create table tn911.strucdomain_tbl ( 
	strucdomain varchar(4) primary key, 
	description varchar(50)
); 

insert into tn911.strucdomain_tbl (strucdomain, description) values (100, '100-Familial'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (200, '200-Religious'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (300, '300-Education'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (400, '400-Medical'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (500, '500-Agricultural'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (600, '600-Government'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (700, '700-Utility'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (800, '800-Industrial'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (900, '900-Public Safety'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1000, '1000-Transportation'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1200, '1200-Assets'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1300, '1300-Commercial'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1400, '1400-Entertainment'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1500, '1500-Recreational'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (1600, '1600-Historical'); 
insert into tn911.strucdomain_tbl (strucdomain, description) values (9000, '1700-Miscellaneous'); 

DROP TABLE IF EXISTS tn911.structype_tbl; 
create table tn911.structype_tbl ( 
	structype smallint primary key, 
	strucfk smallint, 
        description varchar(50)
        ); 

insert into tn911.structype_tbl (structype, strucfk, description) values (1, 100, 'House'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (2, 100, 'Duplex'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (3, 100, 'Mobile Home'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (4, 100, 'Apartment'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (5, 100, 'Secondary Structure'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (6, 100, 'Underground House'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (7, 100, 'Condominium'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (8, 100, 'Townhome'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (9, 100, 'Triplex'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (10, 100, 'Trailer Park'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (11, 100, 'RV/Camper'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (12, 100, 'Cabin'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (13, 100, 'Day Care'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (14, 100, 'Day Care'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (15, 100, 'Senior Citizen Center'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (16, 100, 'Bus'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (17, 100, 'Quadplex'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (18, 100, 'Communal Area');
insert into tn911.structype_tbl (structype, strucfk, description) values (200, 200, 'Religious'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (201, 200, 'Place of Worship'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (300, 300, 'Education'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (301, 300, 'School'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (302, 300, 'University/College'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (303, 300, 'Library'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (304, 300, 'Dormitory'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (400, 400, 'Medical'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (401, 400, 'Hospital'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (402, 400, 'Clinic'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (403, 400, 'Pharmacy'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (404, 400, 'Dental'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (405, 400, 'Vision'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (406, 400, 'Nursing Home'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (407, 400, 'Assisted Living Facility'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (408, 400, 'Rehabilitation Center'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (409, 400, 'Morgue'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (500, 500, 'Agricultural'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (501, 500, 'Farm'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (502, 500, 'Barn'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (503, 500, 'Veterinary'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (504, 500, 'Animal Shelter'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (505, 500, 'Fish Hatchery'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (506, 500, 'Greenhouse/Nursery'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (507, 500, 'Chicken House'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (600, 600, 'Government'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (601, 600, 'Capitol'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (602, 600, 'City Hall'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (603, 600, 'Court House'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (604, 600, 'Post Office'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (605, 600, 'DoD/Military'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (700, 700, 'Utility'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (701, 700, 'Tower'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (702, 700, 'Cell Tower'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (703, 700, 'Radio Tower'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (704, 700, 'TVA Siren'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (705, 700, 'Water Tank'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (706, 700, 'Oil Tank'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (707, 700, 'Oil Well'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (708, 700, 'Natural Gas Tank'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (709, 700, 'Natural Gas Well'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (710, 700, 'Natural Gas Pipeline'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (711, 700, 'Power Substation'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (712, 700, 'Pump Station'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (800, 800, 'Industrial'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (801, 800, 'Warehouse'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (802, 800, 'Recycle Facility'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (803, 800, 'Bottling Plant'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (804, 800, 'Treatment Plant'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (805, 800, 'Landfill'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (806, 800, 'Mine'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (807, 800, 'Rock Quarry'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (900, 900, 'Public Safety'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (901, 900, 'Prison'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (902, 900, 'Detention Center'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (903, 900, 'Police'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (904, 900, 'Sheriff'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (905, 900, 'Fire'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (906, 900, 'Rescue Squad'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (907, 900, 'EMS'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (908, 900, 'Shelter'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (909, 900, 'Fire Hydrant'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (910, 900, 'PELA/LZ/Helicopter Pad'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (911, 900, 'PSAP'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1000, 1000, 'Transportation'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1001, 1000, 'Airport'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1002, 1000, 'Airport Hanger'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1003, 1000, 'Airport Terminal'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1004, 1000, 'Bus Station'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1005, 1000, 'Gas Station'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1006, 1000, 'Bridge'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1007, 1000, 'Rest Area'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1008, 1000, 'Railroad'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1009, 1000, 'Roundhouse'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1010, 1000, 'Train Station'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1011, 1000, 'Railroad Crossing'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1012, 1000, 'Railroad Equipment'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1013, 1000, 'Railroad Mile Marker'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1014, 1000, 'River Marker'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1015, 1000, 'Mile Marker'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1200, 1200, 'Asset'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1201, 1200, 'Gate'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1202, 1200, 'Call Box/Phone Cabinet'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1203, 1200, 'Billboard'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1300, 1300, 'Commercial'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1301, 1300, 'Shopping Area'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1302, 1300, 'Store'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1303, 1300, 'Office'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1304, 1300, 'Parking Garage'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1305, 1300, 'Bank'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1306, 1300, 'Massage Parlor'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1307, 1300, 'Hotel/Motel'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1308, 1300, 'Laundry Mat'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1309, 1300, 'Storage Facility'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1400, 1400, 'Entertainment'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1401, 1400, 'Restaurant'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1402, 1400, 'Cafe'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1403, 1400, 'Bar'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1404, 1400, 'Club'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1405, 1400, 'Theater'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1406, 1400, 'Convention Center'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1407, 1400, 'Stadium'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1408, 1400, 'Arena'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1409, 1400, 'Sports Complex'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1500, 1500, 'Recreational'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1501, 1500, 'Park'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1502, 1500, 'Campground'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1503, 1500, 'Lodge'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1504, 1500, 'Golf Course'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1505, 1500, 'Boat Dock'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1506, 1500, 'Watercraft'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1600, 1600, 'Historical'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1601, 1600, 'Museum'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (1602, 1600, 'Cemetery'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (9000, 9000, 'Temporary'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (9001, 9000, 'Vacant'); 
insert into tn911.structype_tbl (structype, strucfk, description) values (9002, 9000, 'Unknown'); 

/* C1 Street Suffix Abbreviations. Also to be used for Pre-type and PostMod */
DROP TABLE IF EXISTS tn911.type_tbl;
create table tn911.type_tbl ( 
        description varchar(24),
	type varchar(5) primary key  
        ); 

insert into tn911.type_tbl (description, type) values ('ALLEY', 'ALY'); 
insert into tn911.type_tbl (description, type) values ('ANEX', 'ANX'); 
insert into tn911.type_tbl (description, type) values ('ARCADE', 'ARC'); 
insert into tn911.type_tbl (description, type) values ('AVENUE', 'AVE'); 
insert into tn911.type_tbl (description, type) values ('BAYOU', 'BYU'); 
insert into tn911.type_tbl (description, type) values ('BEACH', 'BCH'); 
insert into tn911.type_tbl (description, type) values ('BEND', 'BND'); 
insert into tn911.type_tbl (description, type) values ('BLUFF', 'BLF'); 
insert into tn911.type_tbl (description, type) values ('BLUFFS', 'BLFS'); 
insert into tn911.type_tbl (description, type) values ('BOTTOM', 'BTM'); 
insert into tn911.type_tbl (description, type) values ('BOULEVARD', 'BLVD'); 
insert into tn911.type_tbl (description, type) values ('BRANCH', 'BR'); 
insert into tn911.type_tbl (description, type) values ('BRIDGE', 'BRG'); 
insert into tn911.type_tbl (description, type) values ('BROOK', 'BRK'); 
insert into tn911.type_tbl (description, type) values ('BROOKS', 'BRKS'); 
insert into tn911.type_tbl (description, type) values ('BURG', 'BG'); 
insert into tn911.type_tbl (description, type) values ('BURGS', 'BGS'); 
insert into tn911.type_tbl (description, type) values ('BYPASS', 'BYP'); 
insert into tn911.type_tbl (description, type) values ('CAMP', 'CP'); 
insert into tn911.type_tbl (description, type) values ('CANYON', 'CYN'); 
insert into tn911.type_tbl (description, type) values ('CAPE', 'CPE'); 
insert into tn911.type_tbl (description, type) values ('CAUSEWAY', 'CSWY'); 
insert into tn911.type_tbl (description, type) values ('CENTER', 'CTR'); 
insert into tn911.type_tbl (description, type) values ('CENTERS', 'CTRS'); 
insert into tn911.type_tbl (description, type) values ('CIRCLE', 'CIR'); 
insert into tn911.type_tbl (description, type) values ('CIRCLES', 'CIRS'); 
insert into tn911.type_tbl (description, type) values ('CLIFF', 'CLF'); 
insert into tn911.type_tbl (description, type) values ('CLIFFS', 'CLFS'); 
insert into tn911.type_tbl (description, type) values ('CLUB', 'CLB'); 
insert into tn911.type_tbl (description, type) values ('COMMON', 'CMN'); 
insert into tn911.type_tbl (description, type) values ('COMMONS', 'CMNS'); 
insert into tn911.type_tbl (description, type) values ('CORNER', 'COR'); 
insert into tn911.type_tbl (description, type) values ('CORNERS', 'CORS'); 
insert into tn911.type_tbl (description, type) values ('COURSE', 'CRSE'); 
insert into tn911.type_tbl (description, type) values ('COURT', 'CT'); 
insert into tn911.type_tbl (description, type) values ('COURTS', 'CTS'); 
insert into tn911.type_tbl (description, type) values ('COVE', 'CV'); 
insert into tn911.type_tbl (description, type) values ('COVES', 'CVS'); 
insert into tn911.type_tbl (description, type) values ('CREEK', 'CRK'); 
insert into tn911.type_tbl (description, type) values ('CRESCENT', 'CRES'); 
insert into tn911.type_tbl (description, type) values ('CREST', 'CRST'); 
insert into tn911.type_tbl (description, type) values ('CROSSING', 'XING'); 
insert into tn911.type_tbl (description, type) values ('CROSSROAD', 'XRD'); 
insert into tn911.type_tbl (description, type) values ('CROSSROADS', 'XRDS'); 
insert into tn911.type_tbl (description, type) values ('CURVE', 'CURV'); 
insert into tn911.type_tbl (description, type) values ('DALE', 'DL'); 
insert into tn911.type_tbl (description, type) values ('DAM', 'DM'); 
insert into tn911.type_tbl (description, type) values ('DIVIDE', 'DV'); 
insert into tn911.type_tbl (description, type) values ('DRIVE', 'DR'); 
insert into tn911.type_tbl (description, type) values ('DRIVES', 'DRS'); 
insert into tn911.type_tbl (description, type) values ('ESTATE', 'EST'); 
insert into tn911.type_tbl (description, type) values ('ESTATES', 'ESTS'); 
insert into tn911.type_tbl (description, type) values ('EXPRESSWAY', 'EXPY'); 
insert into tn911.type_tbl (description, type) values ('EXTENSION', 'EXT'); 
insert into tn911.type_tbl (description, type) values ('EXTENSIONS', 'EXTS'); 
insert into tn911.type_tbl (description, type) values ('FALL', 'FALL'); 
insert into tn911.type_tbl (description, type) values ('FALLS', 'FLS'); 
insert into tn911.type_tbl (description, type) values ('FERRY', 'FRY');  
insert into tn911.type_tbl (description, type) values ('FIELD', 'FLD'); 
insert into tn911.type_tbl (description, type) values ('FIELDS', 'FLDS'); 
insert into tn911.type_tbl (description, type) values ('FLAT', 'FLT');
insert into tn911.type_tbl (description, type) values ('FLATS', 'FLTS');
insert into tn911.type_tbl (description, type) values ('FORD', 'FRD');
insert into tn911.type_tbl (description, type) values ('FORDS', 'FRDS');
insert into tn911.type_tbl (description, type) values ('FOREST', 'FRST');
insert into tn911.type_tbl (description, type) values ('FORGE', 'FRG');
insert into tn911.type_tbl (description, type) values ('FORGES', 'FRGS');
insert into tn911.type_tbl (description, type) values ('FORK', 'FRK');
insert into tn911.type_tbl (description, type) values ('FORKS', 'FRKS');
insert into tn911.type_tbl (description, type) values ('FORT', 'FT');
insert into tn911.type_tbl (description, type) values ('FREEWAY', 'FWY');
insert into tn911.type_tbl (description, type) values ('GARDEN', 'GDN');
insert into tn911.type_tbl (description, type) values ('GARDENS', 'GDNS');
insert into tn911.type_tbl (description, type) values ('GATEWAY', 'GTWY');
insert into tn911.type_tbl (description, type) values ('GLEN', 'GLN');
insert into tn911.type_tbl (description, type) values ('GLENS', 'GLNS');
insert into tn911.type_tbl (description, type) values ('GREEN', 'GRN');
insert into tn911.type_tbl (description, type) values ('GREENS', 'GRNS');
insert into tn911.type_tbl (description, type) values ('GROVE', 'GRV');
insert into tn911.type_tbl (description, type) values ('GROVES', 'GRVS');
insert into tn911.type_tbl (description, type) values ('HARBOR', 'HBR');
insert into tn911.type_tbl (description, type) values ('HARBORS', 'HBRS');
insert into tn911.type_tbl (description, type) values ('HAVEN', 'HVN');
insert into tn911.type_tbl (description, type) values ('HEIGHTS', 'HTS');
insert into tn911.type_tbl (description, type) values ('HIGHWAY', 'HWY');
insert into tn911.type_tbl (description, type) values ('HILL', 'HL');
insert into tn911.type_tbl (description, type) values ('HILLS', 'HLS');
insert into tn911.type_tbl (description, type) values ('HOLLOW', 'HOLW');
insert into tn911.type_tbl (description, type) values ('INLET', 'INLT');
insert into tn911.type_tbl (description, type) values ('ISLAND', 'IS');
insert into tn911.type_tbl (description, type) values ('ISLANDS', 'ISS');
insert into tn911.type_tbl (description, type) values ('ISLE', 'ISLE');
insert into tn911.type_tbl (description, type) values ('JUNCTION', 'JCT');
insert into tn911.type_tbl (description, type) values ('JUNCTIONS', 'JCTS');
insert into tn911.type_tbl (description, type) values ('KEY', 'KY');
insert into tn911.type_tbl (description, type) values ('KEYS', 'KYS');
insert into tn911.type_tbl (description, type) values ('KNOLL', 'KNL');
insert into tn911.type_tbl (description, type) values ('KNOLLS', 'KNLS');
insert into tn911.type_tbl (description, type) values ('LAKE', 'LK');
insert into tn911.type_tbl (description, type) values ('LAKES', 'LKS');
insert into tn911.type_tbl (description, type) values ('LAND', 'LAND');
insert into tn911.type_tbl (description, type) values ('LANDING', 'LNDG');
insert into tn911.type_tbl (description, type) values ('LANE', 'LN');
insert into tn911.type_tbl (description, type) values ('LIGHT', 'LGT');
insert into tn911.type_tbl (description, type) values ('LIGHTS', 'LGTS');
insert into tn911.type_tbl (description, type) values ('LOAF', 'LF');
insert into tn911.type_tbl (description, type) values ('LOCK', 'LCK');
insert into tn911.type_tbl (description, type) values ('LOCKS', 'LCKS');
insert into tn911.type_tbl (description, type) values ('LODGE', 'LDG');
insert into tn911.type_tbl (description, type) values ('LOOP', 'LOOP');
insert into tn911.type_tbl (description, type) values ('MALL', 'MALL');
insert into tn911.type_tbl (description, type) values ('MANOR', 'MNR');
insert into tn911.type_tbl (description, type) values ('MANORS', 'MNRS');
insert into tn911.type_tbl (description, type) values ('MEADOW', 'MDW');
insert into tn911.type_tbl (description, type) values ('MEADOWS', 'MDWS');
insert into tn911.type_tbl (description, type) values ('MEWS', 'MEWS');
insert into tn911.type_tbl (description, type) values ('MILL', 'ML');
insert into tn911.type_tbl (description, type) values ('MILLS', 'MLS');
insert into tn911.type_tbl (description, type) values ('MISSION', 'MSN');
insert into tn911.type_tbl (description, type) values ('MOTORWAY', 'MTWY');
insert into tn911.type_tbl (description, type) values ('MOUNT', 'MT');
insert into tn911.type_tbl (description, type) values ('MOUNTAIN', 'MTN');
insert into tn911.type_tbl (description, type) values ('MOUNTAINS', 'MTNS');
insert into tn911.type_tbl (description, type) values ('NECK','NCK');
insert into tn911.type_tbl (description, type) values ('ORCHARD', 'ORCH');
insert into tn911.type_tbl (description, type) values ('OVAL', 'OVAL');
insert into tn911.type_tbl (description, type) values ('OVERPASS', 'OPAS');
insert into tn911.type_tbl (description, type) values ('PARK', 'PARK');
insert into tn911.type_tbl (description, type) values ('PARKWAY', 'PKWY');
insert into tn911.type_tbl (description, type) values ('PASS', 'PASS');
insert into tn911.type_tbl (description, type) values ('PASSAGE', 'PSGE');
insert into tn911.type_tbl (description, type) values ('PATH', 'PATH');
insert into tn911.type_tbl (description, type) values ('PIKE', 'PIKE');
insert into tn911.type_tbl (description, type) values ('PINE', 'PNE');
insert into tn911.type_tbl (description, type) values ('PINES', 'PNES');
insert into tn911.type_tbl (description, type) values ('PLACE', 'PL');
insert into tn911.type_tbl (description, type) values ('PLAIN', 'PLN');
insert into tn911.type_tbl (description, type) values ('PLAINS', 'PLNS');
insert into tn911.type_tbl (description, type) values ('PLAZA', 'PLZ');
insert into tn911.type_tbl (description, type) values ('POINT', 'PT');
insert into tn911.type_tbl (description, type) values ('POINTS', 'PTS');
insert into tn911.type_tbl (description, type) values ('PORT', 'PRT');
insert into tn911.type_tbl (description, type) values ('PORTS', 'PRTS');
insert into tn911.type_tbl (description, type) values ('PRAIRIE', 'PR');
insert into tn911.type_tbl (description, type) values ('RADIAL', 'RADL');
insert into tn911.type_tbl (description, type) values ('RAMP', 'RAMP');
insert into tn911.type_tbl (description, type) values ('RANCH', 'RNCH');
insert into tn911.type_tbl (description, type) values ('RAPID', 'RPD');
insert into tn911.type_tbl (description, type) values ('RAPIDS', 'RPDS');
insert into tn911.type_tbl (description, type) values ('REST', 'RST');
insert into tn911.type_tbl (description, type) values ('RIDGE', 'RDG');
insert into tn911.type_tbl (description, type) values ('RIDGES', 'RDGS');
insert into tn911.type_tbl (description, type) values ('RIVER', 'RIV');
insert into tn911.type_tbl (description, type) values ('ROAD', 'RD');
insert into tn911.type_tbl (description, type) values ('ROADS', 'RDS');
insert into tn911.type_tbl (description, type) values ('ROUTE', 'RTE');
insert into tn911.type_tbl (description, type) values ('ROW', 'ROW');
insert into tn911.type_tbl (description, type) values ('RUE', 'RUE');
insert into tn911.type_tbl (description, type) values ('RUN', 'RUN');
insert into tn911.type_tbl (description, type) values ('SHOAL', 'SHL');
insert into tn911.type_tbl (description, type) values ('SHOALS', 'SHLS');
insert into tn911.type_tbl (description, type) values ('SHORE', 'SHR');
insert into tn911.type_tbl (description, type) values ('SHORES', 'SHRS');
insert into tn911.type_tbl (description, type) values ('SKYWAY', 'SKWY');
insert into tn911.type_tbl (description, type) values ('SPRING', 'SPG');
insert into tn911.type_tbl (description, type) values ('SPRINGS', 'SPGS');
insert into tn911.type_tbl (description, type) values ('SPUR', 'SPUR');
insert into tn911.type_tbl (description, type) values ('SQUARE', 'SQ');
insert into tn911.type_tbl (description, type) values ('SQUARES', 'SQS');
insert into tn911.type_tbl (description, type) values ('STATION', 'STA');
insert into tn911.type_tbl (description, type) values ('STRAVENUE', 'STRA');
insert into tn911.type_tbl (description, type) values ('STREAM', 'STRM');
insert into tn911.type_tbl (description, type) values ('STREET', 'ST');
insert into tn911.type_tbl (description, type) values ('STREETS', 'STS');
insert into tn911.type_tbl (description, type) values ('SUMMIT', 'SMT');
insert into tn911.type_tbl (description, type) values ('TERRACE', 'TER');
insert into tn911.type_tbl (description, type) values ('THROUGHWAY', 'TRWY');
insert into tn911.type_tbl (description, type) values ('TRACE', 'TRCE');
insert into tn911.type_tbl (description, type) values ('TRACK', 'TRAK');
insert into tn911.type_tbl (description, type) values ('TRAFFICWAY', 'TRFY');
insert into tn911.type_tbl (description, type) values ('TRAIL', 'TRL');
insert into tn911.type_tbl (description, type) values ('TRAILER', 'TRLR');
insert into tn911.type_tbl (description, type) values ('TUNNEL', 'TUNL');
insert into tn911.type_tbl (description, type) values ('TURNPIKE', 'TPKE');
insert into tn911.type_tbl (description, type) values ('UNDERPASS', 'UPAS');
insert into tn911.type_tbl (description, type) values ('UNION', 'UN');
insert into tn911.type_tbl (description, type) values ('UNIONS', 'UNS');
insert into tn911.type_tbl (description, type) values ('VALLEY', 'VLY');
insert into tn911.type_tbl (description, type) values ('VALLEYS', 'VLYS');
insert into tn911.type_tbl (description, type) values ('VIADUCT', 'VIA');
insert into tn911.type_tbl (description, type) values ('VIEW', 'VW');
insert into tn911.type_tbl (description, type) values ('VIEWS', 'VWS');
insert into tn911.type_tbl (description, type) values ('VILLAGE', 'VLG');
insert into tn911.type_tbl (description, type) values ('VILLAGES', 'VLGS');
insert into tn911.type_tbl (description, type) values ('VILLE', 'VL');
insert into tn911.type_tbl (description, type) values ('VISTA', 'VIS');
insert into tn911.type_tbl (description, type) values ('WALK', 'WALK');
insert into tn911.type_tbl (description, type) values ('WALL', 'WALL');
insert into tn911.type_tbl (description, type) values ('WAY', 'WAY');
insert into tn911.type_tbl (description, type) values ('WAYS', 'WAYS');
insert into tn911.type_tbl (description, type) values ('WELL', 'WL');
insert into tn911.type_tbl (description, type) values ('WELLS', 'WLS');

/* qgis table unit */ 
DROP TABLE IF EXISTS tn911.unit_type_tbl; 
create table tn911.unit_type_tbl ( 
        description varchar(24),
	unit_type varchar(4) primary key 
        ); 

insert into tn911.unit_type_tbl (description, unit_type) values ('APARTMENT', 'APT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('BASEMENT', 'BSMT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('BUILDING', 'BLDG'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('DEPARTMENT', 'DEPT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('FLOOR', 'FL'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('FRONT', 'FRNT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('HANGAR', 'HNGR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('LOBBY', 'LBBY'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('LOT',	'LOT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('LOWER', 'LOWR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('OFFICE', 'OFC'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('PENTHOUSE', 'PH'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('PIER', 'PIER'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('REAR', 'REAR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('ROOM', 'RM'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('SIDE', 'SIDE'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('SLIP', 'SLIP'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('SPACE', 'SPC'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('STOP', 'STOP'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('SUITE', 'STE'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('TRAILER', 'TRLR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('UNIT', 'UNIT'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('UPPER', 'UPPR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('GARAGE', 'GAR'); 
insert into tn911.unit_type_tbl (description, unit_type) values ('OTHER', 'OTH'); 

/* Create Source  Table */
DROP TABLE IF EXISTS tn911.source_tbl; 
create table tn911.source_tbl ( 
	source integer primary key,
	description varchar(24)
        ); 

insert into tn911.source_tbl (source, description) values (1, '1-Parcel Centroid'); 
insert into tn911.source_tbl (source, description) values (2, '2-Driveway Entrance'); 
insert into tn911.source_tbl (source, description) values (3, '3-Structure Centroid'); 
insert into tn911.source_tbl (source, description) values (4, '4-Main entrace'); 
insert into tn911.source_tbl (source, description) values (5, '5-Frontage Centroid'); 
insert into tn911.source_tbl (source, description) values (0, '6-Undefined'); 

/* Create Lifecycle Status Table */
DROP TABLE IF EXISTS tn911.lifecyclestatus_tbl; 
create table tn911.lifecyclestatus_tbl ( 
	status integer primary key,
	description varchar(24)
        ); 

insert into tn911.lifecyclestatus_tbl (status, description) values (730, '730-ACTIVE'); 
insert into tn911.lifecyclestatus_tbl (status, description) values (734, '734-PROPOSED'); 
insert into tn911.lifecyclestatus_tbl (status, description) values (736, '736-POTENTIAL'); 
insert into tn911.lifecyclestatus_tbl (status, description) values (799, '799-RETIRED'); 

/* Create a addr_type */
DROP TABLE IF EXISTS tn911.addrtype_tbl; 
create table tn911.addrtype_tbl ( 
	type char(2) primary key,
	description varchar(24)
        ); 

insert into tn911.addrtype_tbl (type, description) values ('P', 'Potential'); 
insert into tn911.addrtype_tbl (type, description) values ('A', 'Actual'); 

/* Nametype */ 
DROP TABLE IF EXISTS tn911.nametype_tbl; 
create table tn911.nametype_tbl ( 
	nametype integer primary key,
	description varchar(50)
        ); 

insert into tn911.nametype_tbl (nametype, description) values (1, '1-Signed Name'); 
insert into tn911.nametype_tbl (nametype, description) values (2, '2-Long Haul Name - State Wide'); 
insert into tn911.nametype_tbl (nametype, description) values (3, '3-Long Haul Name - County Wide'); 
insert into tn911.nametype_tbl (nametype, description) values (4, '4-Long Haul Name - City Wide'); 
insert into tn911.nametype_tbl (nametype, description) values (5, '5-Postal Name'); 
insert into tn911.nametype_tbl (nametype, description) values (6, '6-MSAG Name'); 
insert into tn911.nametype_tbl (nametype, description) values (7, '7-Inventory Name'); 

/* CFCC Table */
DROP TABLE IF EXISTS tn911.cfcc_tbl; 
create table tn911.cfcc_tbl ( 
	cfcc char(3) primary key,
	description varchar(150)
        ); 

insert into tn911.cfcc_tbl (cfcc, description) values ('A10', 'A10-Road, major and minor categories unknown');
insert into tn911.cfcc_tbl (cfcc, description) values ('A11', 'A11-Primary road with limited access or interstate highway, unseparated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A12', 'A12-Primary road with limited access or interstate highway, unseparated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A13', 'A13-Primary road with limited access or interstate highway, unseparated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A14', 'A14-Primary road with limited access or interstate highway, unseparated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A15', 'A15-Primary road with limited access or interstate highway, separated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A16', 'A16-Primary road with limited access or interstate highway, separated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A17', 'A17-Primary road with limited access or interstate highway, separated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A18', 'A18-Primary road with limited access or interstate highway, separated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A19', 'A19-Primary road with limited access or interstate highway, bridge');
insert into tn911.cfcc_tbl (cfcc, description) values ('A21', 'A21-Primary road without limited access, U.S. and State highways, unseparated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A22', 'A22-Primary road without limited access, U.S. and State highways, unseparated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A23', 'A23-Primary road without limited access, U.S. and State highways, unseparated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A24', 'A24-Primary road without limited access, U.S. and State highways, unseparated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A25', 'A25-Primary road without limited access, U.S. and State highways, separated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A26', 'A26-Primary road without limited access, U.S. and State highways, separated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A27', 'A27-Primary road without limited access, U.S. and State highways, separated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A28', 'A28-Primary road without limited access, U.S. and State highways, separated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A29', 'A29-Primary road without limited access, US highways, bridge');
insert into tn911.cfcc_tbl (cfcc, description) values ('A31', 'A31-Secondary and connecting road, State and county highways, unseparated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A32', 'A32-Secondary and connecting road, State and county highways, unseparated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A33', 'A33-Secondary and connecting road, State and county highways, unseparated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A34', 'A34-Secondary and connecting road, State and county highways, unseparated, with rail lin in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A35', 'A35-Secondary and connecting road, State and county highways, separated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A36', 'A36-Secondary and connecting road, State and county highways, separated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A37', 'A37-Secondary and connecting road, State and county highways, separated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A38', 'A38-Secondary and connecting road, State and county highway, separated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A39', 'A39-Secondary and connecting road, state and county highways, bridge');
insert into tn911.cfcc_tbl (cfcc, description) values ('A41', 'A41-Local, neighborhood, and rural road, city street, unseparated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A42', 'A42-Local, neighborhood, and rural road, city street, unseparated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A43', 'A43-Local, neighborhood, and rural road, city street, unseparated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A44', 'A44-Local, neighborhood, and rural road, city street, unseparated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A45', 'A45-Local, neighborhood, and rural road, city street, separated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A46', 'A46-Local, neighborhood, and rural road, city street, separated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A47', 'A47-Local, neighborhood, and rural road, city street, separated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A48', 'A48-Local, neighborhood, and rural road, city street, separated, with rail line in center');
insert into tn911.cfcc_tbl (cfcc, description) values ('A49', 'A49-Local, neighborhood, and rural road, city street, bridge');
insert into tn911.cfcc_tbl (cfcc, description) values ('A50', 'A50-Vehicular trail, road passable only by four-wheel drive (4WD) vehicle, major category');
insert into tn911.cfcc_tbl (cfcc, description) values ('A51', 'A51-Vehicular trail, road passable only by 4WD vehicle, unseparated');
insert into tn911.cfcc_tbl (cfcc, description) values ('A52', 'A52-Vehicular trail, road passable only by 4WD vehicle, unseparated, in tunnel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A53', 'A53-Vehicular trail, road passable only by 4WD vehicle, unseparated, underpassing');
insert into tn911.cfcc_tbl (cfcc, description) values ('A60', 'A60-Special road feature, major category used when the minor category could not be determined');
insert into tn911.cfcc_tbl (cfcc, description) values ('A61', 'A61-Cul-de-sac, the closed end of a road that tn911 a loop or turn around');
insert into tn911.cfcc_tbl (cfcc, description) values ('A62', 'A62-Traffic circle, the portion of a road or intersection of roads that form a roundabout');
insert into tn911.cfcc_tbl (cfcc, description) values ('A63', 'A63-Access ramp, the portion of a road that tn911 a cloverleaf or limited access interchange');
insert into tn911.cfcc_tbl (cfcc, description) values ('A64', 'A64-Service drive, road that provides access to businesses, facilities, and rest areas along limited-access highway');
insert into tn911.cfcc_tbl (cfcc, description) values ('A65', 'A65-Ferry crossing, the representation of a route over water that connects roads on opposite shores');
insert into tn911.cfcc_tbl (cfcc, description) values ('A66', 'A66-Gated barrier to travel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A67', 'A67-Toll booth barrier to travel');
insert into tn911.cfcc_tbl (cfcc, description) values ('A70', 'A70-Other thoroughfare, major category used when the minor category could not be determined');
insert into tn911.cfcc_tbl (cfcc, description) values ('A71', 'A71-Walkway, nearly level road for pedestrians, usually unnamed');
insert into tn911.cfcc_tbl (cfcc, description) values ('A72', 'A72-Stairway, stepped road for pedestrians, usually unnamed');
insert into tn911.cfcc_tbl (cfcc, description) values ('A73', 'A73-Alley, road for service vehicles, usually unnamed, located at the rear of buildings and property');
insert into tn911.cfcc_tbl (cfcc, description) values ('A74', 'A74-Driveway or service road, usually privately owned and unnamed, used as access to residences, etc., or as access to logging areas, etc.');

/* Lanes */ 
DROP TABLE IF EXISTS tn911.lanes_tbl; 
create table tn911.lanes_tbl ( 
	lanes integer primary key
        ); 

insert into tn911.lanes_tbl (lanes) values (1); 
insert into tn911.lanes_tbl (lanes) values (2); 
insert into tn911.lanes_tbl (lanes) values (3); 
insert into tn911.lanes_tbl (lanes) values (4); 
insert into tn911.lanes_tbl (lanes) values (5); 
insert into tn911.lanes_tbl (lanes) values (6); 
insert into tn911.lanes_tbl (lanes) values (7); 
insert into tn911.lanes_tbl (lanes) values (8); 
insert into tn911.lanes_tbl (lanes) values (9); 
insert into tn911.lanes_tbl (lanes) values (10); 
insert into tn911.lanes_tbl (lanes) values (11); 
insert into tn911.lanes_tbl (lanes) values (12); 
insert into tn911.lanes_tbl (lanes) values (13); 

DROP TABLE IF EXISTS tn911.oneway_tbl; 
create table tn911.oneway_tbl ( 
	id serial primary key, 
	oneway varchar(3),
	description varchar(50)
        ); 

insert into tn911.oneway_tbl (oneway, description) values ('TF', 'One Way is To-From Node Direction'); 
insert into tn911.oneway_tbl (oneway, description) values ('FT', 'One Way is From-To Node Direction'); 
insert into tn911.oneway_tbl (oneway, description) values ('T', 'One Way is TO-From Node Direction'); 
insert into tn911.oneway_tbl (oneway, description) values ('F', 'One Way is From-To Node Direction'); 
insert into tn911.oneway_tbl (oneway, description) values ('N', 'One Way is in Neither Direction'); 

DROP TABLE IF EXISTS tn911.access_tbl; 
create table tn911.access_tbl ( 
	id serial primary key, 
	type varchar(24),
	description varchar(50)
        ); 

insert into tn911.access_tbl (type, description) values ('access', 'Access Point'); 
insert into tn911.access_tbl (type, description) values ('routing', 'Routing Point'); 
insert into tn911.access_tbl (type, description) values ('access and routing', 'Structure is accessed and routed from this point'); 

DROP TABLE IF EXISTS tn911.geosrc_tbl; 
create table tn911.geosrc_tbl ( 
	geosrc varchar(50) primary key,
	description varchar(50)
        ); 

insert into tn911.geosrc_tbl (geosrc, description) values ('Survey', 'Survey'); 
insert into tn911.geosrc_tbl (geosrc, description) values ('GPS', 'GPS'); 
insert into tn911.geosrc_tbl (geosrc, description) values ('Aerial Imagery', 'Aerial Imagery'); 
insert into tn911.geosrc_tbl (geosrc, description) values ('Drone', 'Drone'); 
insert into tn911.geosrc_tbl (geosrc, description) values ('Other', 'Other'); 
