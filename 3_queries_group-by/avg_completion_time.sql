select name, avg(duration)
from students
join assignment_submissions
on student_id = students.id
where end_date is null
group by name
order by avg(duration) desc;
