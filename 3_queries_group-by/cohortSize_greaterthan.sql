select cohorts.name, count(students.name) 
from cohorts
join students
on cohort_id = cohorts.id
group by cohorts.name
having count(students.name) >= 18
order by count(students.name);