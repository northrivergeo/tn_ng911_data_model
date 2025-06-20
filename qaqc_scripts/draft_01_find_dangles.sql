select distinct g1 as geom into tn911.dangles from tn911.centerlines, 
	(select g as g1 from  
           (select g, count(*) as cnt 
   		from (
	       	  select ST_StartPoint(geom) as g from tn911.centerlines
	            union all 
		  select ST_EndPoint(geom) as g from tn911.centerlines) as T1
	  	group by g)
	where cnt = 1)
