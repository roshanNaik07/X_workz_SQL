CREATE database metro;

CREATE table metroInfo ( id int , city varchar(20) , metro_line varchar(20) , no_of_trains int , booking varchar(35), ticket_price int , source_location varchar(20) , destination_location varchar(20));

INSERT INTO metroInfo VALUES (1, 'Delhi', 'Blue Line', 50, 'Online & Offline', 30, 'Dwarka', 'Noida City Centre');
INSERT INTO metroInfo VALUES (2, 'Mumbai', 'Line 1', 40, 'Online Only', 25, 'Versova', 'Ghatkopar');
INSERT INTO metroInfo VALUES (3, 'Bengaluru', 'Purple Line', 35, 'Offline Only', 35, 'Baiyappanahalli', 'Kengeri');
INSERT INTO metroInfo VALUES (4, 'Chennai', 'Green Line', 20, 'Online & Offline', 20, 'Central', 'Airport');
INSERT INTO metroInfo VALUES (5, 'Kolkata', 'North-South', 30, 'Online Only', 15, 'Dumdum', 'Kavi Subhash');
INSERT INTO metroInfo VALUES (6, 'Hyderabad', 'Red Line', 25, 'Offline Only', 20, 'Miyapur', 'LB Nagar');
INSERT INTO metroInfo VALUES (7, 'Pune', 'Purple Line', 15, 'Online & Offline', 30, 'PCMC', 'Civil Court');
INSERT INTO metroInfo VALUES (8, 'Jaipur', 'Pink Line', 12, 'Online Only', 10, 'Mansarovar', 'Chandpole');
INSERT INTO metroInfo VALUES (9, 'Lucknow', 'North-South', 10, 'Offline Only', 15, 'Transport Nagar', 'Charbagh');
INSERT INTO metroInfo VALUES (10, 'Ahmedabad', 'Blue Line', 18, 'Online & Offline', 20, 'Thaltej', 'Vastral Gam');
INSERT INTO metroInfo VALUES (11, 'Nagpur', 'Orange Line', 8, 'Online Only', 10, 'Khapri', 'Sitabuldi');
INSERT INTO metroInfo VALUES (12, 'Kochi', 'Blue Line', 14, 'Online & Offline', 20, 'Aluva', 'Maharaja\'s College');
INSERT INTO metroInfo VALUES (13, 'Noida', 'Aqua Line', 16, 'Offline Only', 25, 'Sector 51', 'Depot');
INSERT INTO metroInfo VALUES (14, 'Gurgaon', 'Rapid Metro', 9, 'Online Only', 20, 'Sector 55-56', 'Cyber City');
INSERT INTO metroInfo VALUES (15, 'Bhopal', 'Orange Line', 7, 'Online & Offline', 10, 'AIIMS', 'Subhash Nagar');
INSERT INTO metroInfo VALUES (16, 'Indore', 'Yellow Line', 6, 'Offline Only', 15, 'Gandhi Nagar', 'Rajwada');
INSERT INTO metroInfo VALUES (17, 'Patna', 'Red Line', 5, 'Online Only', 12, 'Danapur', 'Khemni Chak');
INSERT INTO metroInfo VALUES (18, 'Agra', 'Blue Line', 6, 'Online & Offline', 18, 'Taj East Gate', 'Mankameshwar');
INSERT INTO metroInfo VALUES (19, 'Varanasi', 'Green Line', 4, 'Offline Only', 10, 'Banaras Station', 'Sarnath');
INSERT INTO metroInfo VALUES (20, 'Surat', 'Orange Line', 10, 'Online Only', 15, 'Dream City', 'Sarthana');

update metroInfo set city="sirsi" where id=10;
update metroInfo set metro_line="Purple Line"  where booking='Offline Only' and destination_location='LB Nagar';
update metroInfo set no_of_trains=12 where id=18 or destination_location='Sarthana';
update metroInfo set no_of_trains=17 where id in(7,10);
update metroInfo set booking="offline only" where id between 17 and 19;
update metroInfo set ticket_price=60 where id not between 2 and 19;
update metroInfo set source_location='Attiguppe' where id=17;
update metroInfo set destination_location='M G Road' where id=17;
update metroInfo set no_of_trains=35 where id not in(7,10,5,8,12,18,3,13,17,19);

delete from metroInfo where id = 17 and metro_line='Red Line';
delete from metroInfo where id = 13 or metro_line='White Line';
delete from metroInfo where id in(19);
delete from metroInfo where id between 15 and 16;
delete from metroInfo where id not between 2 and 19;

select city from metroInfo where id = 2 and no_of_trains=40;
select city from metroInfo where id = 5 or no_of_trains=35;
select no_of_trains from metroInfo where id in(15 , 12 ,19);
select * from metroInfo where id not in (15 , 12 ,19);
select * from metroInfo where id between 3 and 7;
select * from metroInfo where id not between 7 and 17;
select * from metroInfo;