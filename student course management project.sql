-- student course management project  --
create database student_management ;
use student_management ;


-- 1. create  student table --
create table students (
student_id int primary key auto_increment ,
name varchar(50),
email varchar(100) unique ,
join_date date 
);

-- 2.create courses table--
create table courses(
course_id int primary key auto_increment ,
course_name varchar(500),
credits int 
);

-- 3.create table teachers--
create table teachers(
teacher_id int primary key auto_increment,
teacher_name varchar(100),
subject varchar(100)
);

-- 4.create table course_teacher --
create table course_teachers(
course_id int ,
teacher_id int ,
primary key (course_id ,teacher_id),
foreign key (course_id) references courses (course_id),
foreign key(teacher_id) references teachers(teacher_id)
);

-- 5.create enrollment table --
create table enrollments (
enrollment_id int primary key auto_increment ,
student_id int,
course_id int,
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id)
);

-- insert sample data into students--

INSERT INTO students(student_id, name, email, join_date)
VALUES
(1, 'pooja', 'pooja23@gmail.com', '2004-03-12'),
(2, 'sumit', 'sp23@gmail.com', '2015-02-10'),
(3, 'jyoti', 'jy3@gmail.com', '2010-07-02'),
(4, 'anchal', 'army3@gmail.com', '2017-06-25');

 -- insert sample data of courses--
 insert into courses(course_id,course_name,credits)
 values
 (10,'sql',3),
 (11,'python',4),
 (12,'advance java',5);

-- insert sample data of teachers--
insert into teachers(teacher_id,teacher_name,subject)
values
(20,'ms.priya','sql'),
(21,'mr alok','sql'),
(22,'ms.sanju','sql');

-- links courses to the teachers--
insert into course_teachers (course_id,teacher_id)
values
(10,20),
(11,21),
(12,22);

-- enroll student--
insert into enrollments(student_id,course_id,enrollment_id)
values
(1,10,5),
(2,11,6),
(3,12,7);

select * from students;
select*from courses ;
select *from teachers ;
select * from course_teachers;
select * from enrollments ;

--  query for student enroll for course --
SELECT s.name AS student_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id;

-- query for course taught by teacher--
select t.teacher_name  as teacher_name, c.course_name
from teachers t 
join course_teachers ct on t.teacher_id = ct.teacher_id
join courses c on ct.course_id = c.course_id ;

-- count total student --
select count(name) from students;

-- find name start with A--
select * from students
where name like 'a%';

-- index--
create index idx_student_email on students(email);

show index from students ;










 