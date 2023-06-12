select left1.label, left1.l_f_add::int, left1.l_t_add::int, left1.id, left2.label, left2.id, left2.l_f_add::int, left2.l_t_add::int
from (select id, 
             label,
             l_f_add::int,
             l_t_add::int 
      from tn911.centerlines) left1
inner join (select id, 
             label,
             l_f_add::int,
             l_t_add::int 
      from tn911.centerlines) left2
 on left1.label = left2.label
 and left1.id < left2.id
where left1.l_f_add::int between left2.l_f_add::int and left2.l_t_add::int
 or left1.l_t_add::int between left2.l_f_add::int and left2.l_t_add::int;
