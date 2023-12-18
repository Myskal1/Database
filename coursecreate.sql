CREATE SEQUENCE teacher_id_sequence START 1001;
CREATE SEQUENCE student_id_sequence START 1001;
create sequence course_code_sequence start 1001;

create table course_type
(
     c_type varchar(20),
     primary key (c_type)
);

CREATE TABLE time_slot
(
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (start_time),
    primary key (start_time)
);

create table teacher
(
    teacher_id VARCHAR(20) DEFAULT 'T' || nextval('teacher_id_sequence') PRIMARY KEY,
    t_name VARCHAR(20) NOT NULL,
    t_email VARCHAR(20),
    t_password VARCHAR(10),
    c_type varchar(20),
    FOREIGN KEY (c_type) REFERENCES course_type (c_type)
    on delete set null
);
CREATE TABLE course
(
    course_code VARCHAR(20) DEFAULT 'C' || nextval('course_code_sequence') primary key,
    course_title VARCHAR(50),
    teacher_id VARCHAR(20),
    description varchar(255),
    c_type VARCHAR(20),
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    foreign key (teacher_id) references teacher(teacher_id),
    foreign key (start_time) references time_slot(start_time),
    FOREIGN KEY (c_type) REFERENCES course_type (c_type)
);


CREATE TABLE student
(
    ID VARCHAR(20) DEFAULT 'S' || nextval('student_id_sequence') PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    s_email VARCHAR(20),
    s_password VARCHAR(20),
    c_type varchar(20),
    foreign key (c_type) references course_type (c_type)
    ON DELETE SET NULL
);

CREATE TABLE takes
(
    ID VARCHAR(5),
    course_code VARCHAR(20),
    FOREIGN KEY (course_code) REFERENCES course (course_code) ON DELETE CASCADE,
    FOREIGN KEY (ID) REFERENCES student (ID) ON DELETE CASCADE
);
