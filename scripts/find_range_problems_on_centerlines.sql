select ilv1.label, ilv1.l_f_add::int, ilv1.l_t_add::int, ilv1.id, ilv2.label, ilv2.id, ilv2.l_f_add::int, ilv2.l_t_add::int
from (select id, 
             label,
             l_f_add::int,
             l_t_add::int 
      from tn911.centerlines) ilv1
inner join (select id, 
             label,
             l_f_add::int,
             l_t_add::int 
      from tn911.centerlines) ilv2
 on ilv1.label = ilv2.label
 and ilv1.id < ilv2.id
where ilv1.l_f_add::int between ilv2.l_f_add::int and ilv2.l_t_add::int
 or ilv1.l_f_add::int between ilv2.l_f_add::int and ilv2.l_t_add::int;
