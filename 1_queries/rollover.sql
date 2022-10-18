select students.name, students.start_date,
cohorts.name, cohorts.start_date
from students join cohorts on
cohorts.id = cohort_id
where cohorts.start_date != students.start_date
order by cohorts.start_date;