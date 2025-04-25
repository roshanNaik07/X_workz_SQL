create database sports;

create table Athletes(
name_of_athlete varchar(30),
gender varchar(6),
age int,
sport varchar(20),
team varchar(30),
country varchar(20),
ranking int,
coach varchar(30),
training_center varchar(30),
fan_following varchar(15)
);

alter table Athletes 
add column injuries varchar(30),
add column fitness_status varchar(30),
add column motivation_source varchar(30),
add column rival varchar(30);

alter table Athletes
drop column fan_following;

alter table Athletes
rename column injuries to injury_history,
rename column fitness_status to fitness,
rename column motivation_source to inspiration,
rename column sport to discipline;
