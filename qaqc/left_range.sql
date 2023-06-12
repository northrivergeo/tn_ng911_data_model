select left1.label, left1.oirid, left1.r_f_add::int, left1.r_t_add::int, left2.label, left2.oirid, left2.r_f_add::int, left2.r_t_add::int
from (select oirid, 
             label,
             r_f_add::int,
             r_t_add::int 
      from tn911.centerlines) left1
inner join (select oirid, 
             label,
             r_f_add::int,
             r_t_add::int 
      from tn911.centerlines) left2
 on left1.label = left2.label
 and left1.oirid < left2.oirid
where left1.r_f_add::int between left1.r_f_add::int and left1.r_t_add::int
 or left2.r_t_add::int between left2.r_f_add::int and left2.r_t_add::int;
