-- query for course taught by teacher--
select t.teacher_name  as teacher_name, c.course_name
from teachers t 
join course_teachers ct on t.teacher_id = ct.teacher_id
join courses c on ct.course_id = c.course_id ;