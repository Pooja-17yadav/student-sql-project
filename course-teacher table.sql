-- 4.create table course_teacher --
create table course_teachers(
course_id int ,
teacher_id int ,
primary key (course_id ,teacher_id),
foreign key (course_id) references courses (course_id),
foreign key(teacher_id) references teachers(teacher_id)
);
