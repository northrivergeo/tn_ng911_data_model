--create a table for existing road type--
create table tn911.county_type_tbl as 
   select 
      type as type, 
      type as description
   from 
      tn911.address_points 
   group by 
      type 
   order by type asc

--create a table for existing zipcodes--
create table tn911.county_zipcodes_tbl as 
   select 
      zip as type, 
      zip as description
   from 
      tn911.address_points 
   group by 
      zip 
   order by zip asc

--create a table for existing cities-- 
create table tn911.county_city_tbl as
   select 
      city as type,    
      city as description
   from 
      tn911.address_points 
   group by 
      city    
   order by city asc

--create a table for existing addrauth-- 
create table tn911.county_addrauth_tbl as
   select
      addrauth as type,
      addrauth as description
   from
      tn911.address_points
   group by
      addrauth
   order by addrauth asc


