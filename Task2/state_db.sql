CREATE database state;

CREATE table state_info
( state_id int, state_name varchar(15), country varchar(15), population int, area_size decimal(10,2) );

alter table state_info 
add column capital_city VARCHAR(30),
add column founded_year year,
add column state_status VARCHAR(20);

alter table state_info
rename column founded_year to established_year,
rename column state_status to state_condition,
rename column population to state_population;

alter table state_info
modify column state_condition varchar(15),
modify column state_population int,
modify column established_year int;

desc state_info;

insert into state_info values 
(1, 'California',    'USA',   39538223, 423967, 'Sacramento', 1850, 'Active'),
(2, 'Ontario',       'Canada','13448494', 1076395, 'Toronto',    1867, 'Active'),
(3, 'New South Wales', 'Australia', 8086500, 800642, 'Sydney', 1851, 'Active'),
(4, 'Bavaria',       'Germany', 13124737, 70551, 'Munich', 1806, 'Active'),
(5, 'Maharashtra',   'India', 112374333, 307713, 'Mumbai', 1960, 'Active'),
(6, 'Ile-de-France', 'France', 12330000, 12011, 'Paris', 1959, 'Active'),
(7, 'Tokyo',         'Japan', 13929286, 2191, 'Tokyo', 1868, 'Active'),
(8, 'São Paulo',     'Brazil', 46009762, 248209, 'São Paulo', 1889, 'Active'),
(9, 'Texas',         'USA',   29145505, 695662, 'Austin', 1845, 'Active'),
(10, 'Jalisco',      'Mexico', 8347775, 78516, 'Guadalajara', 1823, 'Active'),
(11, 'Queensland',   'Australia', 5161900, 1857566, 'Brisbane', 1859, 'Active'),
(12, 'Lazio',         'Italy', 5948835, 1751, 'Rome', 1948, 'Active'),
(13, 'Uttar Pradesh', 'India', 199812341, 243286, 'Lucknow', 1950, 'Active'),
(14, 'Madrid',        'Spain', 6669499, 80297, 'Madrid', 1983, 'Active'),
(15, 'Moscow',        'Russia', 12506468, 2561, 'Moscow', 1708, 'Active'),
(16, 'Zhejiang',      'China', 57370000, 105500, 'Hangzhou', 1979, 'Active'),
(17, 'Dubai',         'UAE',   3331420, 4114, 'Dubai', 1971, 'Active'),
(18, 'Seoul',         'South Korea', 9776000, 605, 'Seoul', 1945, 'Active'),
(19, 'Florida',       'USA',   21538187, 170312, 'Tallahassee', 1845, 'Active'),
(20, 'Krung Thep',    'Thailand', 8280000, 1568, 'Bangkok', 1782, 'Active');

select * from state_info;
