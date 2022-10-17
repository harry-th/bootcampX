select name, id
from students
where email is null
or phone is null;