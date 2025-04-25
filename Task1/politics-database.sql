create database politics;

create table Leaders(
name_of_leader varchar(20),
gender varchar(5),
age int,
party varchar(20),
position varchar(20),
region varchar(15),
experience_years int,
popularity_level varchar(10),
education varchar(20),
achievements varchar(50)
);

alter table Leaders 
add column controversies varchar(50),
add column health_issues varchar(20),
add column focused_on varchar(20),
add column spouse varchar(20);

alter table Leaders
drop column achievements;

alter table Leaders
rename column controversies to controversy,
rename column health_issues to health_status,
rename column focused_on to agenda,
rename column popularity_level to fame_level;
