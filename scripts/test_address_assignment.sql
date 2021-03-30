select oirid from hc911.addresspoints where oirid = 'HENRY_34112'; 

select st_linelocatepoint(b.geom, a.geom) as streetnum from hc911.addresspoints as a, hc911.henry_centerline as b where a.oirid = 'HENRY_34112';      
