CREATE database airline;

CREATE table airline_info
( airline_id int , airline_name varchar(15) , country varchar(15),rating decimal(3,3), fleet_size int);

alter table airline_info 
add column founded_year year,
add column headquarters	VARCHAR(20),
add column airline_status VARCHAR(20);

alter table airline_info
rename column founded_year to start_year,
rename column airline_status to plane_status,
rename column rating to airline_rating ;

alter table airline_info
modify column plane_status varchar(15),
modify column airline_rating int,
modify column start_year int;

desc airline_info;

insert into airline_info values 
(1, 'AirVista',     'USA',        5,  12, 1990, 'New York',     'Active'),
(2, 'SkyNova',      'Canada',     4,  85, 2005, 'Toronto',      'Active'),
(3, 'JetLine',      'UK',         3,  60, 1985, 'London',       'Inactive'),
(4, 'CloudAir',     'Germany',    4, 100, 2010, 'Berlin',       'Active'),
(5, 'FlySwift',     'India',      5, 150, 2000, 'Delhi',        'Active'),
(6, 'BlueHawk',     'France',     4, 110, 1998, 'Paris',        'Active'),
(7, 'AeroGo',       'Japan',      4,  90, 2012, 'Tokyo',        'Active'),
(8, 'ZoomAir',      'Brazil',     2,  70, 1995, 'São Paulo',    'Inactive'),
(9, 'GlobalJet',    'USA',        5, 200, 1980, 'Chicago',      'Active'),
(10, 'AirDash',     'Mexico',     4,  95, 2003, 'Mexico City',  'Active'),
(11, 'NovaWings',   'Australia',  5, 130, 1992, 'Sydney',       'Active'),
(12, 'StarJet',     'Italy',      3,  75, 1988, 'Rome',         'Inactive'),
(13, 'SkyPulse',    'India',      5, 140, 2015, 'Mumbai',       'Active'),
(14, 'WindWay',     'Spain',      4, 105, 1997, 'Madrid',       'Active'),
(15, 'JetSonic',    'Russia',     3,  80, 2001, 'Moscow',       'Inactive'),
(16, 'SkyTrack',    'China',      5, 160, 2006, 'Beijing',      'Active'),
(17, 'FlashAir',    'UAE',        5, 175, 2011, 'Dubai',        'Active'),
(18, 'NimbusFly',   'South Korea',3,  78, 1999, 'Seoul',        'Inactive'),
(19, 'EagleAir',    'USA',        4, 190, 1982, 'Dallas',       'Active'),
(20, 'SunriseJet',  'Thailand',   5, 115, 2004, 'Bangkok',      'Active');

select * from airline_info;