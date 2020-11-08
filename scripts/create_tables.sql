/*creating the tables with for TN911*/ 
/*rjhale                            */ 
/*20200924                          */

create schema tn911; 

create table tn911.address_points ( 
	id serial primary key, 
	geom geometry (point, 2274), 
	oirid char(20), 
	r_segid char(25), 
	a_segid char(25), 
	seg_side char(1), 
	gislink char(15), 
	structype smallint, 
	strucdesc char(30), 
	stnum_h char(10), 
	stnum_l char(10), 
	stnum char(10), 
	stnumsuf char(10), 
	building char(35), 
	floor char(10), 
	unit_type char(10), 
	unit_num char(10), 
	predir char(2), 
	pretype char(5), 
	name char(40), 
	type char(5), 
	sufdir char(2), 
	postmod char(20), 
	address char(100), 
	addr_esn char(100), 
	label char(100), 
	subname char(50), 
	vanity char(50), 
	zip char(5), 
	zip4 char(4), 
	esn char(4), 
	city char(30), 
	county char(30), 
	state char(2), 
	long char(15), 
	lat char(15), 
	x_sp double precision, 
	y_sp double precision, 
	z_val integer, 
	gpsdate date, 
	addrauth char(50), 
	source smallint, 
	editor char(10), 
	geomod char(75), 
	geosrce char(45), 
	geodate date, 
	attmod char(75), 
	attsrce char(45), 
	attdate date, 
	status smallint, 
	delnotes char(75)
    ); 

/* Spatial Index */
create index address_idx on tn911.address_points using gist(geom);                  

/* Comments */
comment on column tn911.address_points.oirid is 'Currently, this value is an alphanumeric patterned after the format: ‘%ECD name%_%numeric sequence%’ The ECD name is a one-word moniker for the District and MUST be in uppercase. For each individual record, this value MUST be unique among all address point records and persist for the lifetime of that record. The numeric sequence should increment by one (1) with each successive edit, but there is no requirement for consecutive numbering as long as the values are unique and persistent for each record. At this time, these unique identifiers cannot be reused once an address point record is deleted.';
comment on column tn911.address_points.r_segid is 'Identifier linking the address point to the road centerline segment that it is routed from. The value should mirror the [SEGID] value on the related centerline segment. This can be different from the segment it is addressed from. If there is more than one routable segment, the primary segment should be referenced here. If the [A_SEGID] is also a routable segment, it should be referenced as the primary (see 1.1.3, 2.1.2, and Figure 1).';
comment on column tn911.address_points.a_segid is 'Identifier linking the address point to the road centerline segment that it is addressed from. The value should mirror the [SEGID] value on the referenced centerline segment. The same address can be routed-to from a different centerline segment (see 1.1.2 , 2.1.2, and Figure 1).';
comment on column tn911.address_points.seg_side is 'Identifies the side of the related centerline segment that the site address point is addressed from. The centerline segment has direction based on its From and To nodes, not its address range assignment (though both should align).';
comment on column tn911.address_points.gislink is 'Links the site address point to the parcel it is within. The relationship affords access to information about owner/occupancy, acreage, subdivision names, and other CAAS attributes.'; 
comment on column tn911.address_points.structype is 'Domain of values that describe the type of structure represented by the site address point. Only one value can be chosen. If multiple values apply, choose the one that best describes the type of site address point this represents.';
comment on column tn911.address_points.strucdesc is 'Value describing the characteristics of the structure represented by the site address point.';
comment on column tn911.address_points.stnum_h is 'Contains the largest value (MAX) of an address range for a single structure.'; 
comment on column tn911.address_points.stnum_l is 'Contains the lowest value (MIN) of an address range for a single structure.'; 
comment on column tn911.address_points.stnum is 'Alpha-numeric field containing the structure number or value for the site address civic location assigned by the local addressing authority. Usually an integer which defines the individual address number for the structure. As this is the primary structure value, alphabetic characters should only appear in this field if they are part of the house number, not a secondary address (like an apartment, suite or unit). Duplex structures with no primary address can be populated in this field (i.e., ‘101A’ and ‘101B’).';
comment on column tn911.address_points.stnumsuf is 'A non-integer value that accompanies the street number. Always use the virgule (/) when noting a half address.';
comment on column tn911.address_points.building is '[VANITY] may describe a complex of buildings, but this field identifies the specific building associated with this site address point. As this is already identified as the building by the field name, do not add or abbreviate “BUILDING” for the field value, (e.g., if it is ‘BLDG A’ simply enter ‘A’).';
comment on column tn911.address_points.floor is 'The floor of the building specific to this site address point. If there is only one floor, leave this field blank. As this is already identified as the floor by the field name, do not add or abbreviate “FLOOR” for the field value, (e.g., if it is ‘FLR 2’ simply enter ‘2’). Use the USPS secondary unit designator abbreviations found in Appendix C2 of the Publication 28 standard where applicable.';
comment on column tn911.address_points.unit_type is 'USPS Publication 28 Appendix C2 applicable values, see also Appendix B of this document.';
comment on column tn911.address_points.unit_num is 'The secondary unit number or identifier that specifies the individual unit.'; 
comment on column tn911.address_points.predir is 'An abbreviated directional indicator for the road.'; 
comment on column tn911.address_points.pretype is 'A type modifier for the road placed in front of the road name. The field length is currently 5 for existing special cases, but all attempts should be made to follow the domain for this field.';
comment on column tn911.address_points.name is 'The name of the thoroughfare or throughway only (without the street type or directionals).';
comment on column tn911.address_points.type is 'A type modifier for the road placed after the street name. The field length is currently 5 for existing special cases, but new assignments should follow the domain for this field.';
comment on column tn911.address_points.sufdir is 'An abbreviated directional indicator for the road.'; 
comment on column tn911.address_points.postmod is 'Always follows and modifies the street name.';  
comment on column tn911.address_points.address is 'The concatenation of all parsed street number and street name elements consisting of STNUM, PREDIR, PRETYPE, NAME, TYPE, SUFDIR, POSTMOD. If the secondary address information must be used in this field, it should be appended to the end so that logical queries can still find the primary address.'; 
comment on column tn911.address_points.addr_esn is 'The concatenation of the ADDRESS field with the ESN at the end separated by a space.'; 
comment on column tn911.address_points.label is 'This is a freeform field for use in cartographic design. The values here can (and probably should) be proper case. Typically for the Site Address Points, this field would hold the street number or individual unit designation for this address. Recommended population would show street number for primary addresses and a concatenation of the UNIT_TYPE and UNIT_NUM for secondary addresses.'; 
comment on column tn911.address_points.subname is 'The name of the subdivision this address participates in.'; 
comment on column tn911.address_points.vanity is 'Colloquial landmark name identifying an address location. Field values can be proper case for labeling/cartographic purposes.'; 
comment on column tn911.address_points.zip is 'The 5-digit code assigned to the USPS post office servicing this address location.'; 
comment on column tn911.address_points.zip4 is 'The 4-digit code that value-adds the 5-digit ZIP that identifies a finite range of delivery addresses within the area serviced by the specific USPS post office.'; 
comment on column tn911.address_points.esn is 'The Emergency Service Number is actually a 5-digit string, of which this schema is only capturing the last 3. The 3-digit code is prefixed with leading zeros. The ESN is a legacy element used for 10-digt routing.'; 
comment on column tn911.address_points.city is 'This is not the administrative or postal city designation. This field should contain the MSAG Community Name, assigned by the 9-1-1 authority, which the address point is contained within.'; 
comment on column tn911.address_points.county is 'The administrative county area that contains the address point.'; 
comment on column tn911.address_points.state is 'The 2-letter abbreviation for the federal state area that contains the address point.'; 
comment on column tn911.address_points.long is 'The 2-letter abbreviation for the federal state area that contains the address point.'; 
comment on column tn911.address_points.lat is 'The latitude of the address point in Geographic coordinates. Formatting can vary.'; 
comment on column tn911.address_points.x_sp is 'Longitude-equivalent information catalogued in State Plane coordinates that meet the specifications under the Coordinate System and Projection subsection of this document.'; 
comment on column tn911.address_points.y_sp is 'Latitude-equivalent information catalogued in State Plane coordinates that meet the specifications under the Coordinate System and Projection subsection of this document.'; 
comment on column tn911.address_points.z_val is 'Metric elevation above mean sea level'; 
comment on column tn911.address_points.gpsdate is 'Datetime stamp the address point was initially created. Once this value is established, it should never change. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.address_points.addrauth is 'The addressing authority responsible for assigning the address for the current point. Although usually a single entity, addressing authorities can vary within a given jurisdiction.'; 
comment on column tn911.address_points.source is 'A description of what the address point is representing, be it a parcel centroid or a driveway entrance point or a main entrance point to the address represented by the attribution.'; 
comment on column tn911.address_points.editor is 'Moniker identifying the last editor for this address point. It is at the District’s discretion as to whether this identifies an agency or individual.'; 
comment on column tn911.address_points.geomod is 'Brief description of the type of geometry edit that was last performed on this address location.'; 
comment on column tn911.address_points.geosrce is 'The source that was used to make the geometry edit described in GEOMOD.'; 
comment on column tn911.address_points.geodate is 'The datetime stamp the last geometry edit was made to this address location. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.address_points.attmod is 'Brief description of the type of attribute edit that was last performed on this address location.'; 
comment on column tn911.address_points.attsrce is 'The source that was used to make the attribute edit described in ATTMOD.'; 
comment on column tn911.address_points.attdate is 'The datetime stamp the last attribute edit was made to this address location. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.address_points.status is 'Defines the current lifecycle status of the address.'; 
comment on column tn911.address_points.delnotes is 'A notation field explaining the reason for a 799 lifecycle status.'; 

/**********************************************************************************/


create table tn911.centerlines ( 
	id serial primary key, 
        geom geometry (linestring, 2274),	
	oirid char(20), 
	segid char(25), 
	l_f_add char(11), 
	l_t_add char(11), 
	r_f_add char(11), 
	r_t_add char(11), 
	addr_type char(1), 
	predir char(2), 
	pretype char(5), 
	name char(40), 
	type char(5), 
	sufdir char(2), 
	postmod char(20), 
	label char(100), 
	vanity char(75), 
	subname char(50), 
	nametype smallint, 
	cfcc char(3), 
	esn_l char(3), 
	esn_r char(3), 
	zip_l char(5), 
	zip_r char(5), 
        city_l char(30), 
	city_r char(30), 
	county_l char(30), 
	county_r char(30), 
        state_l char(2), 
	state_r char(2), 
	spdlimit double precision,  
	oneway char(2), 
	lanes smallint, 
	t_elev smallint, 
	f_elev smallint, 
	tfcost double precision, 
	ftcost double precision, 
	editor char(10), 
	geomod char(75), 
	geosrce char(45), 
	geodate date, 
	attmod char(75), 
	attsrc char(45), 
	attdate date,
	status smallint); 

/* Spatial Index */
create index centerlines_idx on tn911.centerlines using gist(geom);                  

/* Comments */
comment on column tn911.centerlines.oirid is 'Currently, this value is an alphanumeric patterned after the format: ‘%ECD name%_%numeric sequence%’ The ECD name is a one-word moniker for the District and MUST be in uppercase. For each individual record, this value MUST be unique among all road centerline records and persist for the lifetime of that record. The numeric sequence should increment by one (1) with each successive edit, but there is no requirement for consecutive numbering as long as the values are unique and persistent for each record. At this time, these unique identifiers cannot be reused once a road centerline record is deleted.';
comment on column tn911.centerlines.segid is 'Unique identifier tying vertical alignments between segments together within the road centerline layer (see Figure 2). This field also serves to link the individual road centerline segments to the site address points they are routed and addressed from (see 1.1.2, 1.1.3, and Figure 1). This necessarily implies an auto-sequence number component, but the overall field value format is free-form.'; 
comment on column tn911.centerlines.l_f_add is 'The address range extremity at the From node as defined by the associated address points on the left-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.l_t_add is 'The address range extremity at the From node as defined by the associated address points on the right-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.r_f_add is 'The address range extremity at the From node as defined by the associated address points on the right-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.r_t_add is 'The address range extremity at the To node as defined by the associated address points on the right-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.addr_type is 'Describes the address ranges as actual (A) or potential (P). These can be mixed in the centerline dataset. NENA-preferred values are actual.'; 
comment on column tn911.centerlines.predir is 'An abbreviated directional indicator for the road.'; 
comment on column tn911.centerlines.pretype is 'A type modifier for the road placed in front of the road name. The field length is currently 5 for existing special cases, but all attempts should be made to follow the domain for this field.'; 
comment on column tn911.centerlines.name is 'The name of the thoroughfare or throughway only (without the street type or directionals).'; 
comment on column tn911.centerlines.type is 'A type modifier for the road placed after the street name. The field length is currently 5 for existing special cases, but new assignments should follow the domain for this field.'; 
comment on column tn911.centerlines.sufdir is 'An abbreviated directional indicator for the road.';
comment on column tn911.centerlines.postmod is 'Always follows and modifies the street name.';
comment on column tn911.centerlines.label is 'This is a freeform field for use in cartographic design. The values here can (and probably should) be proper case. Typically for the Site Address Points, this field would hold the street number or individual unit designation for this address. Recommended population would show street number for primary addresses and a concatenation of the UNIT_TYPE and UNIT_NUM for secondary addresses.';
comment on column tn911.centerlines.vanity is 'Colloquial landmark name identifying an address location. Field values can be proper case for labeling/cartographic purposes.';
comment on column tn911.centerlines.subname is 'The name of the subdivision this address participates in.'; 
comment on column tn911.centerlines.nametype is 'Populate this field when there are multiple names associated with each segment (e.g., when a street contains both a locally known as well as a County, State or US highway designation).'; 
comment on column tn911.centerlines.cfcc is 'Now outdated 3-character alphanumeric Census codes classifying geographical features. These will be mapped to the current 5-character alphanumeric MTFCC codes in the NG exchange formats. It is important to correctly classify certain centerline segments to isolate them during processing (e.g., connectors, bridges, ramps) and for linear network routing purposes (e.g., AVL).'; 
comment on column tn911.centerlines.esn_l is 'The Emergency Service Number as defined by the associated address points on the left-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.esn_r is 'The Emergency Service Number as defined by the associated address points on the right-side directionality of the centerline segment.'; 
comment on column tn911.centerlines.zip_l is 'The 5-digit code assigned to the USPS post office servicing the associated address points on the left-side directionality of the centerline segment'; 
comment on column tn911.centerlines.zip_r is 'The 5-digit code assigned to the USPS post office servicing the associated address points on the right-side directionality of the centerline segment'; 
comment on column tn911.centerlines.city_l is 'This is not the administrative or postal city designation. This field should contain the MSAG Community Name, assigned by the 9-1-1 authority, which the associated address points on the left-side directionality of the centerline segment are contained within.'; 
comment on column tn911.centerlines.city_r is 'This is not the administrative or postal city designation. This field should contain the MSAG Community Name, assigned by the 9-1-1 authority, which the associated address points on the right-side directionality of the centerline segment are contained within.'; 
comment on column tn911.centerlines.county_l is 'The administrative county area that the associated address points on the left-side directionality of the centerline segment are contained within.'; 
comment on column tn911.centerlines.county_r is 'The administrative county area that the associated address points on the right-side directionality of the centerline segment are contained within.'; 
comment on column tn911.centerlines.state_l is 'The 2-letter abbreviation for the federal state area that the associated address points on the left-side directionality of the centerline segment are
contained within.'; 
comment on column tn911.centerlines.state_r is 'The 2-letter abbreviation for the federal state area that the associated address points on the right-side directionality of the centerline segment are
contained within.'; 
comment on column tn911.centerlines.spdlimit is 'The posted speed limit for the centerline segment. This field is typed as Double because, although rare, decimals are allowed.'; 
comment on column tn911.centerlines.oneway is 'Directional travel indicator.'; 
comment on column tn911.centerlines.lanes is 'Number of lanes per road segment.'; 
comment on column tn911.centerlines.t_elev is 'Connectivity policy value for modeling overpasses and underpasses.'; 
comment on column tn911.centerlines.f_elev is 'Connectivity policy value for modeling overpasses and underpasses.'; 
comment on column tn911.centerlines.tfcost is 'Travel time impedance value.'; 
comment on column tn911.centerlines.ftcost is 'Travel time impedance value.'; 
comment on column tn911.centerlines.editor is 'Moniker identifying the last editor for this centerline segment. It is at the District’s discretion as to whether this identifies an agency or individual.'; 
comment on column tn911.centerlines.geomod is 'Brief description of the type of geometry edit that was last performed on this centerline segment.';
comment on column tn911.centerlines.geosrce is 'The source that was used to make the geometry edit described in GEOMOD.'; 
comment on column tn911.centerlines.geodate is 'The datetime stamp the last geometry edit was made to this centerline segment. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.centerlines.attmod is 'Brief description of the type of attribute edit that was last performed on this centerline segment.'; 
comment on column tn911.centerlines.attsrc is 'The source that was used to make the attribute edit described in ATTMOD.'; 
comment on column tn911.centerlines.attdate is 'The datetime stamp the last attribute edit was made to this centerline segment. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.centerlines.status is 'Defines the current lifecycle status of the centerline segment.'; 

/**********************************************************************************/


create table tn911.esn ( 
        id serial primary key,
        geom geometry (polygon, 2274),
        oirid char(20),
	esn char(3), 
	wesn char(3), 
	vesn char(3), 
	srte char(25), 
	psapid char(4), 
	geodate date, 
	le char(75), 
	fd char(75), 
	ems char(75));  

/* Spatial Index */
create index esn_idx on tn911.esn using gist(geom);                  

/* Comments */

comment on column tn911.esn.oirid is 'Currently, this value is an alphanumeric patterned after the format: ‘%ECD name%_%numeric sequence%’ The ECD name is a one-word moniker for the District and MUST be in uppercase. For each individual record, this value MUST be unique among all ESN polygon records and persist for the lifetime of that record. The numeric sequence should increment by one (1) with each successive edit, but there is no requirement for consecutive numbering as long as the values are unique and persistent for each record. At this time, these unique identifiers cannot be reused once a ESN polygon record is deleted.'; 
comment on column tn911.esn.esn is 'The Emergency Service Number is actually a 5-digit string, of which this schema is only capturing the last 3. The 3-digit code is prefixed with leading zeros. The ESN is a legacy element used for 10-digt routing.';
comment on column tn911.esn.wesn is '3-digit code representative of the wireless ESN. Populate this field only if the WESN and overlapping ESN are congruent or if there is a single WESN for the entire jurisdiction.'; 
comment on column tn911.esn.vesn is '3-digit code representative of the Voice over IP ESN. Populate this field only if the VESN and overlapping ESN are congruent or if there is a single VESN for the entire jurisdiction.'; 
comment on column tn911.esn.srte is 'The selective router associated with this ESN if known.'; 
comment on column tn911.esn.psapid is 'The FCC maintains a registry of PSAPs within the US and its territories, and assigns a unique 4-digit key to each. This field value should be the primary PSAP identifier from the FCC Master PSAP Registry assigned to the PSAP that this ESN would default route to.  You may download the FCC Master PSAP Registry from here: https://www.fcc.gov/general/9-1-1-master-psap-registry If you do not find your PSAP or if a change has taken place, please advise the FCC using the contact information in the link provided and register.'; 
comment on column tn911.esn.geodate is 'Datetime stamp the polygonal geometry was last modified. It should be noted that datetime values are not permissible in Shapefiles. Date fields in Shapefiles can hold a date or a time, but not both.'; 
comment on column tn911.esn.le is 'Designation for the law enforcement response agency associated with this ESN. This field can identify more than one response agency. Although this is a freeform field, consistency in the values should still be employed.'; 
comment on column tn911.esn.fd is 'Designation for the responding fire department associated with this ESN.  This field can identify more than one response agency. Although this is a freeform field, consistency in the values should still be employed.'; 
comment on column tn911.esn.ems is 'Designation for the emergency medical response agency associated with this ESN. This field can identify more than one response agency. Although this is a freeform field, consistency in the values should still be employed.'; 

