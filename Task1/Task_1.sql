CREATE database Cricket

CREATE table ipl_details (id int , no_of_teams int  );

ALTER table ipl_details 
ADD column team_name varchar(15),
ADD column coach_name varchar(15),
ADD column owner_name varchar(15),
ADD column management_count int ,
ADD column home_ground varchar(15),
ADD column captain_name varchar(15),
ADD column captain_age int ,
ADD column vice_captain_name varchar(15),
ADD column vice_captain_age varchar(15),
ADD column match_date date,
ADD column winner varchar(15);

ALTER table ipl_details 
DROP column winner;

alter table ipl_details 
add column ticket_no int,
add column impact_Player varchar(10),
add column match_won int,
add column match_lost int;

alter table ipl_details
rename column ticket_no to seat_number,
rename column match_won to win,
rename column match_lost to lose,
rename column owner_name to owner;

alter table ipl_details 
modify column win varchar(20),
modify column lose varchar(20);

desc ipl_details;

