--Drop Constraints on Address table
alter table tn911.address_points drop constraint address_points_postmod_fkey;
alter table tn911.address_points drop constraint address_points_predir_fkey;
alter table tn911.address_points drop constraint address_points_pretype_fkey;
alter table tn911.address_points drop constraint address_points_seg_side_fkey;
alter table tn911.address_points drop constraint address_points_source_fkey;
alter table tn911.address_points drop constraint address_points_status_fkey;
alter table tn911.address_points drop constraint address_points_strucdomain_fkey;
alter table tn911.address_points drop constraint address_points_structype_fkey;
alter table tn911.address_points drop constraint address_points_sufdir_fkey;
alter table tn911.address_points drop constraint address_points_type_fkey;
alter table tn911.address_points drop constraint address_points_unit_type_fkey;

--Drop Constraints on Centerlines
alter table tn911.centerlines drop constraint centerlines_addr_type_fkey;
alter table tn911.centerlines drop constraint centerlines_cfcc_fkey;
alter table tn911.centerlines drop constraint centerlines_lanes_fkey;
alter table tn911.centerlines drop constraint centerlines_nametype_fkey;
alter table tn911.centerlines drop constraint centerlines_predir_fkey;
alter table tn911.centerlines drop constraint centerlines_pretype_fkey;
alter table tn911.centerlines drop constraint centerlines_sufdir_fkey;
alter table tn911.centerlines drop constraint centerlines_type_fkey;

