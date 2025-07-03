-- 5.create enrollment table --
create table enrollments (
enrollment_id int primary key auto_increment ,
student_id int,
course_id int,
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id)
);