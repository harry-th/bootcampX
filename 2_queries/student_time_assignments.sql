select sum(duration)
from assignment_submissions
join students on
students.id = student_id
where students.name = 'Ibrahim Schimmel';