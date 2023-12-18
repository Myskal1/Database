insert into course_type values('Language Course');
insert into course_type values('IT Course');
insert into course_type values('Media Course');
insert into course_type values('School Subjects');

INSERT INTO time_slot (start_time) values (CURRENT_TIMESTAMP);
   
insert into course(course_title, teacher_id,  description, c_type, start_time) values( 'Writiing', 'T1001', 'This course', 'Language Course', current_timestamp);
insert into course(course_title, teacher_id,  description, c_type, start_time) values( 'c++', 'T1001', 'This course', 'Language Course', current_timestamp);


INSERT INTO teacher(t_name,t_email, t_password, c_type) VALUES ( 'Mrs. Davis','davis@email.com', 'davis2', 'Language Course');

INSERT INTO student(name, s_email, s_password, c_type) VALUES ( 'John Smith', 'john@email.com', 'john01', 'Language Course');
INSERT INTO student(name, s_email, s_password, c_type) VALUES ( 'Kim', 'kim.d@email.com', 'david06', 'Language Course');

select * from course;
select * from teacher;
select * from student;
select * from takes t where id = 'S1003';
select * from COURSE
where teacher_id = 'T1003';

