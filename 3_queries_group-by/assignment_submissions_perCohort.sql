select cohorts.name, count(assignment_submissions.*) 
from cohorts
join students
on cohort_id = cohorts.id
join assignment_submissions
on students.id = student_id
group by cohorts.name
order by count(assignment_submissions.*) desc;