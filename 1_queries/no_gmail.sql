select name, id, email, cohort_id
from students
where phone is null
and email not like '%gmail.com';