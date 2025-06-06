/*This checks road and address streetnames. It's a pretty decent way to find misspellings*/

select
   ap.name, 
   rc.name
from 
   ok911.address_points ap 
left join 
   ok911.centerlines rc on ap.name = rc.name group by ap.name, rc.name order by ap.name asc
