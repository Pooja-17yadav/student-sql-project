-- 1. create  student table --
create table students (
student_id int primary key auto_increment ,
name varchar(50),
email varchar(100) unique ,
join_date date 
);