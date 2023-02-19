/* cleanup - I need to sync the oirid with the id and segid */ 
alter table tn911.centerlines add column tempid integer;  

update tn911.centerlines set tempid  = split_part(oirid, '_', 2)::int;

alter table tn911.centerlines drop column id; 

alter table tn911.centerlines rename tempid to id; 

alter table tn911.centerlines add primary key (id);  

update tn911.centerlines set segid = id;

create sequence tn911.centerlines_idpk_seq; 
alter sequence tn911.centerlines_idpk_seq owned by tn911.centerlines.id; 
SELECT setval(pg_get_serial_sequence('tn911.centerlines', 'id'), coalesce(max(id),0) + 1, false) FROM tn911.centerlines;
alter table tn911.centerlines alter column id set default nextval('tn911.centerlines_idpk_seq');
