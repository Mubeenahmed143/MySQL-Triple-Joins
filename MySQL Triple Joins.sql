create database worked;
use worked;

create table students(
std_ID int primary key ,
std_Name varchar(44)
);
insert into students(std_ID, std_Name) values ( "1001" , "Mary" ),( "1002" , "Jane" ),( "1003" , "Daniel" ),( "1004" , "Jack" ),( "1005" , "Harold" );
select * from students;

create table courses(
CourseID int primary key,
Course_Name varchar(44) not null ,
std_ID int ,
foreign key courses(STD_id) references students(std_ID)
);
drop table courses;

insert into courses( CourseID, Course_Name, std_ID ) values ( "5001", "PHP", "1004" ),( "5002", "JAVA", "1001" ),( "5003", "ASP.NET", "1001" ),( "5004", "RUBY", "1002" );
select * from courses;

create table teachers(
TeacherID int primary key ,
Teacher_Name varchar(44),
CourseID int,
foreign key teachers(CourseID) references courses(CourseID)
);
insert into teachers( TeacherID, Teacher_Name, CourseID) values ( "3001", "Jill", "5003" ),( "3002", "Greul", "5002" ),( "3003", "Jemkins", "5001" ),( "3004", "Polo", "5004" );
select * from teachers;

select students.std_Name, courses.Course_Name, teachers.Teacher_Name from students inner join courses on students.std_ID = courses.std_ID inner join  teachers on courses.CourseID = teachers.CourseID;