CREATE DATABASE mall;

CREATE TABLE mallInfo (
    id INT,
    mall_name VARCHAR(30),
    city VARCHAR(20),
    total_shops INT,
    food_court VARCHAR(30),
    parking_capacity INT,
    opening_time VARCHAR(10),
    closing_time VARCHAR(10)
);

INSERT INTO mallInfo VALUES 
(1, 'Phoenix MarketCity', 'Mumbai', 250, 'Yes', 500, '10:00 AM', '11:00 PM'),
(2, 'DLF Mall of India', 'Noida', 300, 'Yes', 600, '10:00 AM', '10:30 PM'),
(3, 'Lulu Mall', 'Kochi', 280, 'Yes', 700, '09:30 AM', '10:00 PM'),
(4, 'Orion Mall', 'Bengaluru', 220, 'No', 450, '10:00 AM', '10:00 PM'),
(5, 'Elante Mall', 'Chandigarh', 210, 'Yes', 400, '10:00 AM', '10:00 PM'),
(6, 'Select Citywalk', 'Delhi', 200, 'Yes', 350, '11:00 AM', '10:30 PM'),
(7, 'Inorbit Mall', 'Hyderabad', 180, 'No', 300, '10:30 AM', '10:00 PM'),
(8, 'Forum Mall', 'Chennai', 160, 'Yes', 280, '10:00 AM', '10:00 PM'),
(9, 'Ambience Mall', 'Gurgaon', 270, 'Yes', 550, '10:00 AM', '11:00 PM'),
(10, 'City Centre', 'Kolkata', 190, 'No', 320, '10:00 AM', '09:30 PM'),
(11, 'Treasure Island', 'Indore', 150, 'Yes', 250, '11:00 AM', '09:30 PM'),
(12, 'Z Square Mall', 'Kanpur', 140, 'No', 220, '10:00 AM', '09:00 PM'),
(13, 'AlphaOne Mall', 'Ahmedabad', 175, 'Yes', 300, '10:00 AM', '10:00 PM'),
(14, 'South City Mall', 'Kolkata', 160, 'Yes', 280, '10:30 AM', '10:00 PM'),
(15, 'Crown Interiorz', 'Faridabad', 130, 'No', 210, '11:00 AM', '09:30 PM'),
(16, 'Great India Place', 'Noida', 290, 'Yes', 650, '10:00 AM', '10:30 PM'),
(17, 'Pacific Mall', 'Delhi', 230, 'Yes', 500, '10:00 AM', '10:00 PM'),
(18, 'DB City Mall', 'Bhopal', 180, 'Yes', 300, '10:00 AM', '10:00 PM'),
(19, 'Wave Mall', 'Lucknow', 160, 'No', 250, '10:30 AM', '09:30 PM'),
(20, 'Nexus Mall', 'Mysore', 120, 'Yes', 200, '11:00 AM', '09:00 PM');

UPDATE mallInfo SET city='Sirsi' WHERE id=10;
UPDATE mallInfo SET food_court='Yes' WHERE total_shops > 180 AND city='Hyderabad';
UPDATE mallInfo SET total_shops=150 WHERE id=18 OR city='Mysore';
UPDATE mallInfo SET total_shops=175 WHERE id IN(7,10);
UPDATE mallInfo SET food_court='No' WHERE id BETWEEN 17 AND 19;
UPDATE mallInfo SET parking_capacity=800 WHERE id NOT BETWEEN 2 AND 19;
UPDATE mallInfo SET opening_time='12:00 PM' WHERE id=17;
UPDATE mallInfo SET closing_time='08:00 PM' WHERE id=17;
UPDATE mallInfo SET total_shops=300 WHERE id NOT IN(7,10,5,8,12,18,3,13,17,19);

DELETE FROM mallInfo WHERE id=17 AND mall_name='Pacific Mall';
DELETE FROM mallInfo WHERE id=13 OR mall_name='Imaginary Mall';
DELETE FROM mallInfo WHERE id IN(19);
DELETE FROM mallInfo WHERE id BETWEEN 15 AND 16;
DELETE FROM mallInfo WHERE id NOT BETWEEN 2 AND 19;

SELECT city FROM mallInfo WHERE id=2 AND total_shops=300;
SELECT city FROM mallInfo WHERE id=5 OR total_shops=300;
SELECT total_shops FROM mallInfo WHERE id IN(15,12,19);
SELECT * FROM mallInfo WHERE id NOT IN(15,12,19);
SELECT * FROM mallInfo WHERE id BETWEEN 3 AND 7;
SELECT * FROM mallInfo WHERE id NOT BETWEEN 7 AND 17;
SELECT * FROM mallInfo;
