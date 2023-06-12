select right1.label, right1.oirid, right1.r_f_add::int, right1.r_t_add::int, right2.label, right2.oirid, right2.r_f_add::int, right2.r_t_add::int
from (select oirid, 
             label,
             r_f_add::int,
             r_t_add::int 
      from tn911.centerlines) right1
inner join (select oirid, 
             label,
             r_f_add::int,
             r_t_add::int 
      from tn911.centerlines) right2
 on right1.label = right2.label
 and right1.oirid < right2.oirid
where right1.r_f_add::int between right1.r_f_add::int and right1.r_t_add::int
 or right2.r_t_add::int between right2.r_f_add::int and right2.r_t_add::int;
