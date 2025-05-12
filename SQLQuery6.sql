
-- CREATE DATABASE
CREATE DATABASE AirlineSystemDB;
USE AirlineSystemDB;

-- TABLE: AIRPORT
CREATE TABLE AIRPORT (
    Airport_code CHAR(5) PRIMARY KEY,
    city VARCHAR(50),
    statue VARCHAR(30),
    name VARCHAR(50),
    Scheduled_dep_time TIME,
    Scheduled_arr_time TIME,
    dep_time TIME,
    arr_time TIME
);

-- TABLE: FLIGHT
CREATE TABLE FLIGHT (
    numberOfFlight INT PRIMARY KEY,
    airline VARCHAR(50),
    weekdays VARCHAR(30)
);

-- TABLE: FLIGHT_LEG
CREATE TABLE FLIGHT_LEG (
    leg_no INT,
    Airport_code CHAR(5),
    numberOfFlight INT,
    PRIMARY KEY (leg_no, numberOfFlight)
);

-- TABLE: FARES
CREATE TABLE FARES (
    code VARCHAR(10) PRIMARY KEY,
    amount DECIMAL(10, 2),
    Restrictions TEXT,
    numberOfFlight INT
);

-- TABLE: AIRPLANE_TYPE
CREATE TABLE AIRPLANE_TYPE (
    type_name VARCHAR(50) PRIMARY KEY,
    company VARCHAR(50),
    max_seats INT
);

-- TABLE: AIRPLANE
CREATE TABLE AIRPLANE (
    airplane_id INT PRIMARY KEY,
    total_no_of_seats INT,
    type_name VARCHAR(50)
);

-- TABLE: CAN_LAND
CREATE TABLE CAN_LAND (
    Airport_code CHAR(5),
    type_name VARCHAR(50),
    PRIMARY KEY (Airport_code, type_name)
);

-- TABLE: LEG_INSTANCE
CREATE TABLE LEG_INSTANCE (
    date DATE,
    no_of_avail_seats INT,
    leg_no INT,
    numberOfFlight INT,
    Airport_code CHAR(5),
    airplane_id INT,
    PRIMARY KEY (date, leg_no, numberOfFlight)
);

-- TABLE: SEAT
CREATE TABLE SEAT (
    seat_no VARCHAR(10),
    date DATE,
    Customer_name VARCHAR(50),
    cphone CHAR(10),
    PRIMARY KEY (seat_no, date, Customer_name)
);

-- =========================
-- ALTER TABLES – FOREIGN KEYS
-- =========================

ALTER TABLE FLIGHT_LEG
ADD CONSTRAINT FK_FLIGHT_LEG_FLIGHT
FOREIGN KEY (numberOfFlight) REFERENCES FLIGHT(numberOfFlight);

ALTER TABLE FLIGHT_LEG
ADD CONSTRAINT FK_FLIGHT_LEG_AIRPORT
FOREIGN KEY (Airport_code) REFERENCES AIRPORT(Airport_code);

ALTER TABLE FARES
ADD CONSTRAINT FK_FARES_FLIGHT
FOREIGN KEY (numberOfFlight) REFERENCES FLIGHT(numberOfFlight);

ALTER TABLE AIRPLANE
ADD CONSTRAINT FK_AIRPLANE_TYPE
FOREIGN KEY (type_name) REFERENCES AIRPLANE_TYPE(type_name);

ALTER TABLE CAN_LAND
ADD CONSTRAINT FK_CANLAND_AIRPORT
FOREIGN KEY (Airport_code) REFERENCES AIRPORT(Airport_code);

ALTER TABLE CAN_LAND
ADD CONSTRAINT FK_CANLAND_TYPE
FOREIGN KEY (type_name) REFERENCES AIRPLANE_TYPE(type_name);

ALTER TABLE LEG_INSTANCE
ADD CONSTRAINT FK_LEG_INSTANCE_FLIGHT_LEG
FOREIGN KEY (leg_no, numberOfFlight) REFERENCES FLIGHT_LEG(leg_no, numberOfFlight);

ALTER TABLE LEG_INSTANCE
ADD CONSTRAINT FK_LEG_INSTANCE_AIRPORT
FOREIGN KEY (Airport_code) REFERENCES AIRPORT(Airport_code);

ALTER TABLE LEG_INSTANCE
ADD CONSTRAINT FK_LEG_INSTANCE_AIRPLANE
FOREIGN KEY (airplane_id) REFERENCES AIRPLANE(airplane_id);

--FIX SEAT 
-- STEP 1: Add columns to SEAT
ALTER TABLE SEAT
ADD leg_no INT,
    numberOfFlight INT;

-- STEP 2: Add foreign key to LEG_INSTANCE
ALTER TABLE SEAT
ADD CONSTRAINT FK_SEAT_LEG_INSTANCE
FOREIGN KEY (date, leg_no, numberOfFlight)
REFERENCES LEG_INSTANCE(date, leg_no, numberOfFlight);

