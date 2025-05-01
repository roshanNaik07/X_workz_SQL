CREATE DATABASE pg;

CREATE TABLE pgInfo (
    id INT,
    pg_name VARCHAR(30),
    city VARCHAR(20),
    capacity INT,
    gender_allowed VARCHAR(15),
    rent INT,
    food_included VARCHAR(10),
    contact_number VARCHAR(15)
);


INSERT INTO pgInfo VALUES
(1, 'Sunrise PG', 'Bengaluru', 50, 'Male', 8000, 'Yes', '9876543210'),
(2, 'GreenNest PG', 'Hyderabad', 40, 'Female', 7500, 'Yes', '8765432109'),
(3, 'Comfort Stay', 'Pune', 30, 'Male', 6500, 'No', '7654321098'),
(4, 'Elite PG', 'Delhi', 60, 'Female', 9000, 'Yes', '6543210987'),
(5, 'Happy Homes', 'Chennai', 25, 'Unisex', 7000, 'No', '5432109876'),
(6, 'City Living', 'Mumbai', 55, 'Female', 8500, 'Yes', '4321098765'),
(7, 'CozyNest', 'Noida', 35, 'Male', 6000, 'No', '3210987654'),
(8, 'Peace Stay', 'Kolkata', 20, 'Unisex', 5000, 'Yes', '2109876543'),
(9, 'Bright PG', 'Ahmedabad', 28, 'Female', 7200, 'No', '1098765432'),
(10, 'Ocean View', 'Visakhapatnam', 45, 'Male', 7800, 'Yes', '9988776655'),
(11, 'UrbanNest', 'Bhopal', 32, 'Unisex', 5500, 'Yes', '8877665544'),
(12, 'Metro PG', 'Lucknow', 26, 'Female', 6200, 'No', '7766554433'),
(13, 'Central PG', 'Indore', 38, 'Male', 7000, 'Yes', '6655443322'),
(14, 'Skyline Stay', 'Gurgaon', 22, 'Unisex', 8000, 'No', '5544332211'),
(15, 'StayEasy', 'Nagpur', 27, 'Female', 6800, 'Yes', '4433221100'),
(16, 'Royal Nest', 'Mysore', 18, 'Male', 5500, 'No', '3322110099'),
(17, 'Palm Residency', 'Jaipur', 20, 'Unisex', 6000, 'Yes', '2211009988'),
(18, 'Blue Haven', 'Thane', 24, 'Female', 7500, 'No', '1100998877'),
(19, 'SilverStay', 'Raipur', 15, 'Male', 5000, 'Yes', '0099887766'),
(20, 'Comfort Inn', 'Patna', 30, 'Unisex', 5800, 'Yes', '9988001122');

UPDATE pgInfo SET city='Sirsi' WHERE id=10;
UPDATE pgInfo SET food_included='Yes' WHERE capacity < 30 AND city='Thane';
UPDATE pgInfo SET capacity=22 WHERE id=18 OR city='Raipur';
UPDATE pgInfo SET capacity=33 WHERE id IN(7,10);
UPDATE pgInfo SET gender_allowed='Unisex' WHERE id BETWEEN 17 AND 19;
UPDATE pgInfo SET rent=10000 WHERE id NOT BETWEEN 2 AND 19;
UPDATE pgInfo SET pg_name='Hillside Stay' WHERE id=17;
UPDATE pgInfo SET contact_number='9999999999' WHERE id=17;
UPDATE pgInfo SET capacity=45 WHERE id NOT IN(7,10,5,8,12,18,3,13,17,19);

DELETE FROM pgInfo WHERE id=17 AND pg_name='Hillside Stay';
DELETE FROM pgInfo WHERE id=13 OR pg_name='Unknown PG';
DELETE FROM pgInfo WHERE id IN(19);
DELETE FROM pgInfo WHERE id BETWEEN 15 AND 16;
DELETE FROM pgInfo WHERE id NOT BETWEEN 2 AND 19;

SELECT city FROM pgInfo WHERE id=2 AND capacity=40;
SELECT city FROM pgInfo WHERE id=5 OR capacity=45;
SELECT capacity FROM pgInfo WHERE id IN(15,12,19);
SELECT * FROM pgInfo WHERE id NOT IN(15,12,19);
SELECT * FROM pgInfo WHERE id BETWEEN 3 AND 7;
SELECT * FROM pgInfo WHERE id NOT BETWEEN 7 AND 17;
SELECT * FROM pgInfo;
