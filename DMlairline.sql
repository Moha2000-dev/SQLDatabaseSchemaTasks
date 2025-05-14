INSERT INTO Airport (Airport_code, city, statue, name, Scheduled_dep_time, Scheduled_arr_time, dep_time, arr_time) VALUES
('MCT', 'Muscat', 'Operational', 'Muscat International', '08:00', '10:00', '08:10', '10:10'),
('SLL', 'Salalah', 'Operational', 'Salalah Airport', '12:00', '14:00', '12:05', '14:05'),
('SOH', 'Sohar', 'Operational', 'Sohar Airport', '16:00', '18:00', '16:15', '18:10'),
('NZW', 'Nizwa', 'Under Repair', 'Nizwa Regional', '09:00', '11:00', '09:10', '11:10'),
('SUR', 'Sur', 'Operational', 'Sur Airport', '18:00', '20:00', '18:10', '20:05');

IF NOT EXISTS (SELECT 1 FROM Flight WHERE numberOfFlight = 1001)
INSERT INTO Flight (numberOfFlight, airline, weekdays)
VALUES (1001, 'Oman Air', 'Monday,Wednesday,Friday');

INSERT INTO Flight (numberOfFlight, airline, weekdays) VALUES

(1002, 'Salalah Express', 'Tuesday,Thursday'),
(1003, 'Sohar Connect', 'Monday,Saturday'),
(1004, 'Nizwa Shuttle', 'Sunday,Friday'),
(1005, 'Sur Wings', 'Wednesday,Saturday');


select * from FLIGHT

INSERT INTO Flight_Leg (leg_no, Airport_code, numberOfFlight) VALUES
(2, 'SLL', 1002),
(3, 'SOH', 1003),
(4, 'NZW', 1004),
(5, 'SUR', 1005);

INSERT INTO Airplane_Type (type_name, company, max_seats) VALUES
('A320', 'Airbus', 150),
('B737', 'Boeing', 160),
('E175', 'Embraer', 88),
('ATR72', 'ATR', 72),
('Q400', 'Bombardier', 76);

INSERT INTO Airplane (airplane_id, total_no_of_seats, type_name) VALUES
(201, 150, 'A320'),
(202, 160, 'B737'),
(203, 88, 'E175'),
(204, 72, 'ATR72'),
(205, 76, 'Q400');

INSERT INTO CAN_LAND (Airport_code, type_name) VALUES
('MCT', 'A320'),
('SLL', 'B737'),
('SOH', 'E175'),
('NZW', 'ATR72'),
('SUR', 'Q400');

INSERT INTO Fares (code, amount, Restrictions, numberOfFlight) VALUES
('F1', 100.00, 'No Refund', 1001),
('F2', 120.00, 'Refundable with fee', 1002),
('F3', 90.00, 'No Changes Allowed', 1003),
('F4', 130.00, 'Fully Flexible', 1004),
('F5', 110.00, 'No Baggage Included', 1005);


INSERT INTO Seat (seat_no, date, Customer_name, cphone) VALUES
('1A', '2024-06-01', 'Ali Al-Zadjali', '91234567'),
('2B', '2024-06-01', 'Sara Al-Harthy', '92345678'),
('3C', '2024-06-01', 'Omar Al-Farsi', '93456789'),
('4D', '2024-06-01', 'Muna Al-Balushi', '94567890'),
('5E', '2024-06-01', 'Hassan Al-Lawati', '95678901');

INSERT INTO LEG_INSTANCE (date, no_of_avail_seats, leg_no, numberOfFlight, Airport_code, airplane_id) VALUES
('2024-06-01', 130, 1, 1001, 'MCT', 201),
('2024-06-01', 150, 2, 1002, 'SLL', 202),
('2024-06-01', 80, 3, 1003, 'SOH', 203),
('2024-06-01', 65, 4, 1004, 'NZW', 204),
('2024-06-01', 70, 5, 1005, 'SUR', 205);



IF NOT EXISTS (SELECT 1 FROM Flight WHERE numberOfFlight = 1001)
INSERT INTO Flight (numberOfFlight, airline, weekdays)
VALUES 
('2024-06-01', 150, 2, 1002, 'SLL', 202),
('2024-06-01', 80, 3, 1003, 'SOH', 203),
('2024-06-01', 65, 4, 1004, 'NZW', 204),
('2024-06-01', 70, 5, 1005, 'SUR', 205);

INSERT INTO Leg_Instance (date, no_of_avail_seats, leg_no, numberOfFlight, Airport_code, airplane_id)
VALUES
('2024-06-01', 150, 2, 1002, 'SLL', 202),
('2024-06-01', 80, 3, 1003, 'SOH', 203),
('2024-06-01', 65, 4, 1004, 'NZW', 204),
('2024-06-01', 70, 5, 1005, 'SUR', 205);




