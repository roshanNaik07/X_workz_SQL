create database education;

create table Students(
name_of_student varchar(30),
gender varchar(6),
age int,
grade varchar(10),
school_name varchar(50),
city varchar(20),
performance_level varchar(15),
fav_subject varchar(20),
extracurricular varchar(30),
guardian varchar(30)
);

alter table Students 
add column learning_disability varchar(30),
add column health_issues varchar(30),
add column interested_in varchar(30),
add column best_friend varchar(30);

alter table Students
drop column guardian;

alter table Students
rename column learning_disability to disability,
rename column health_issues to medical_status,
rename column interested_in to hobby,
rename column fav_subject to fav_topic;
