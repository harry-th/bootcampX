select count(*)
from assistance_requests
join teachers ON
teacher_id = teachers.id
where teachers.name = 'Waylon Boehm';