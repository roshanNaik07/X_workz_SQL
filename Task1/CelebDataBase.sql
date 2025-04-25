create database entertainment;

create table Celebrities(
name_of_celebrity varchar(30),
gender varchar(6),
age int,
profession varchar(20),
nationality varchar(20),
famous_for varchar(50),
debut_year int,
agency varchar(30),
fanbase_name varchar(30),
net_worth varchar(20)
);

alter table Celebrities 
add column scandals varchar(50),
add column health_issues varchar(30),
add column passion varchar(30),
add column partner varchar(30);

alter table Celebrities
drop column fanbase_name;

alter table Celebrities
rename column scandals to controversy,
rename column health_issues to wellness_status,
rename column passion to interest,
rename column famous_for to known_for;
