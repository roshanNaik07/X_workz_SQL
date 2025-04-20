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