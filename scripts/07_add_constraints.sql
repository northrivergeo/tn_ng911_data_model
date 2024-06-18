--Add Constraints back to Tables 
ALTER TABLE tn911.address_points ADD FOREIGN KEY (seg_side) REFERENCES tn911.segside_tbl(seg_side); 
ALTER TABLE tn911.address_points ADD FOREIGN KEY (strucdomain) REFERENCES tn911.strucdomain_tbl(strucdomain); 
ALTER TABLE tn911.address_points ADD FOREIGN KEY (structype) REFERENCES tn911.structype_tbl(structype); 
ALTER TABLE tn911.address_points ADD FOREIGN KEY (unit_type) REFERENCES tn911.unit_type_tbl(unit_type); 
ALTER TABLE tn911.address_points ADD FOREIGN KEY (predir) REFERENCES tn911.predir_tbl(predir);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (pretype) REFERENCES tn911.type_tbl(type);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (type) REFERENCES tn911.type_tbl(type);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (sufdir) REFERENCES tn911.predir_tbl(predir);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (postmod) REFERENCES tn911.type_tbl(type);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (source) REFERENCES tn911.source_tbl(source);
ALTER TABLE tn911.address_points ADD FOREIGN KEY (status) REFERENCES tn911.lifecyclestatus_tbl(status);

--Add Constraints to Centerlines
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (addr_type) REFERENCES tn911.addrtype_tbl(type); 
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (predir) REFERENCES tn911.predir_tbl(predir);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (pretype) REFERENCES tn911.type_tbl(type);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (type) REFERENCES tn911.type_tbl(type);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (sufdir) REFERENCES tn911.predir_tbl(predir);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (nametype) REFERENCES tn911.nametype_tbl(nametype);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (cfcc) REFERENCES tn911.cfcc_tbl(cfcc);
ALTER TABLE tn911.centerlines ADD FOREIGN KEY (lanes) REFERENCES tn911.lanes_tbl(lanes);





ALTER TABLE tn911.centerlines ADD FOREIGN KEY (predir) REFERENCES tn911.type_tbl(type);

