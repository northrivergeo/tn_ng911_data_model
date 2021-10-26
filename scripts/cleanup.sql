/* cleanup - I need to sync the oirid with the id and segid */ 
alter table tn911.centerlines add column tempid integer;  
alter table tn911.address_points add column tempid integer;  

update tn911.centerlines set tempid  = split_part(oirid, '_', 2)::int;
update tn911.address_points set tempid  = split_part(oirid, '_', 2)::int;

alter table tn911.centerlines drop column id; 
alter table tn911.address_points drop column id; 

alter table tn911.centerlines rename tempid to id; 
alter table tn911.address_points rename tempid to id; 

alter table tn911.centerlines add primary key (id);  
alter table tn911.address_points add primary key (id); 

update tn911.centerlines set segid = id;


