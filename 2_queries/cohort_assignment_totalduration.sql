select sum(duration)
from assignment_submissions
join students on
students.id = student_id
join cohorts on
cohorts.id = cohort_id
where students.cohort_id =  cohorts.id
and cohorts.name = 'FEB12';