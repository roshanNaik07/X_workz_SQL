CREATE DATABASE country;

CREATE TABLE country_info (
  country_id INT,
  country_name VARCHAR(20),
  continent VARCHAR(20),
  population BIGINT,
  area_km2 INT
);

ALTER TABLE country_info
ADD COLUMN capital VARCHAR(20),
ADD COLUMN currency VARCHAR(20),
ADD COLUMN official_language VARCHAR(25);

ALTER TABLE country_info
RENAME COLUMN area_km2 TO total_area;

alter TABLE country_info
rename column continent to countiries_continent,
rename column population to country_population;

ALTER TABLE country_info
MODIFY COLUMN capital VARCHAR(25),
MODIFY COLUMN currency VARCHAR(20),
MODIFY COLUMN official_language VARCHAR(25);

DESC country_info;

INSERT INTO country_info VALUES
(1, 'USA',         'North America', 331000000, 9833520, 'Washington D.C.', 'USD', 'English'),
(2, 'Canada',      'North America', 38000000,  9984670, 'Ottawa',          'CAD', 'English/French'),
(3, 'UK',          'Europe',        67000000,  243610,  'London',          'GBP', 'English'),
(4, 'Germany',     'Europe',        83000000,  357386,  'Berlin',          'EUR', 'German'),
(5, 'India',       'Asia',         1400000000, 3287263, 'New Delhi',       'INR', 'Hindi/English'),
(6, 'France',      'Europe',        67000000,  551695,  'Paris',           'EUR', 'French'),
(7, 'Japan',       'Asia',         125000000,  377975,  'Tokyo',           'JPY', 'Japanese'),
(8, 'Brazil',      'South America',213000000, 8515767,  'Brasília',        'BRL', 'Portuguese'),
(9, 'Mexico',      'North America',128000000, 1964375,  'Mexico City',     'MXN', 'Spanish'),
(10,'Australia',   'Oceania',       26000000,  7692024, 'Canberra',        'AUD', 'English'),
(11,'Italy',       'Europe',        59000000,  301340,  'Rome',            'EUR', 'Italian'),
(12,'Spain',       'Europe',        47000000,  505990,  'Madrid',          'EUR', 'Spanish'),
(13,'Russia',      'Europe/Asia',  145000000, 17098242, 'Moscow',          'RUB', 'Russian'),
(14,'China',       'Asia',         1400000000,9596961,  'Beijing',         'CNY', 'Mandarin'),
(15,'UAE',         'Asia',          9800000,    83600,  'Abu Dhabi',       'AED', 'Arabic'),
(16,'South Korea', 'Asia',          52000000,  100210,  'Seoul',           'KRW', 'Korean'),
(17,'Thailand',    'Asia',          70000000,  513120,  'Bangkok',         'THB', 'Thai'),
(18,'Argentina',   'South America',46000000,  2780400,  'Buenos Aires',    'ARS', 'Spanish'),
(19,'Egypt',       'Africa',       104000000, 1002450,  'Cairo',           'EGP', 'Arabic'),
(20,'South Africa','Africa',        60000000, 1219090,  'Pretoria',        'ZAR', 'English/Zulu');

SELECT * FROM country_info;
