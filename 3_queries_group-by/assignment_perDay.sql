select day, count(name)
from assignments
group by (day)
having count(name)>=10
order by day;