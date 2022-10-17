select id, name, email 
from students 
where github is null 
order by cohort_id;