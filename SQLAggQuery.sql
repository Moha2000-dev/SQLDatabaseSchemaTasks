-- GET NUMBER OF EMPLOYESS
SELECT COUNT(*) AS TotalEmployees FROM Employee;
--  GET THE AVREG SALARY OF ALL EMPLOYEE
SELECT AVG(Salary) AS AverageSalary FROM Employee;
--  Count employees in each department
SELECT Dnum, COUNT(*) AS EmployeeCount FROM Departments GROUP BY Dnum;
--Total salary per department
SELECT d.Dname, SUM(e.Salary) AS TotalSalary
FROM Employee e
JOIN Departments d ON e.Dno = d.Dnum
GROUP BY d.Dname;
--Display departments having more than 5 employees
SELECT d.Dname, COUNT(e.SSN) AS EmployeeCount
FROM Employee e
JOIN Departments d ON e.Dno = d.Dnum
GROUP BY d.Dname
HAVING COUNT(e.SSN) > 5;

-------------------------------------------------------------end of EMP---------------------------------------------------------------------
-------------------------------------------------------------University Database -----------------------------------------------------------
--Count total number of students
SELECT COUNT(*) AS TotalStudent FROM Student;
--Count number of students per city
SELECT City, COUNT(*) AS StudentCount FROM Student GROUP BY City;
--Count students per course
SELECT CourseID, COUNT(*) AS StudentCount FROM Enrols GROUP BY CourseID;
--Count number of courses per department
SELECT DepartmentID, COUNT(*) AS CourseCount FROM Course GROUP BY DepartmentID;
--Count number of students assigned to each hostel
SELECT HostelID, COUNT(*) AS StudentCount FROM Student GROUP BY HostelID;
------------------------------------------------------------- END University Database -----------------------------------------------------------
------------------------------------------------------------- Airline Database -------------------------------------------------------------
--Count total flights
SELECT COUNT(*) AS TotalFlights FROM FLIGHT;
--Average available seats per leg
SELECT leg_no, AVG(no_of_avail_seats) AS AvgSeats FROM LEG_INSTANCE GROUP BY leg_no;

--Count flights per airline
SELECT airline, COUNT(*) AS FlightCount FROM FLIGHT GROUP BY airline;

--Estimated total payments per flight(changes)
SELECT airline, COUNT(*) AS FlightCount FROM FLIGHT GROUP BY airline;

--Flights with estimated payments > 10000 
SELECT numberOfFlight, COUNT(*) * (SELECT AVG(amount) FROM FARES) AS EstimatedTotal
FROM SEAT
GROUP BY numberOfFlight
HAVING COUNT(*) * (SELECT AVG(amount) FROM FARES) > 10000;


------------------------------------------------------------- END Airline Database -------------------------------------------------------------
------------------------------------------------------------- Hotel Database -------------------------------------------------------------------
--Count total rooms
SELECT COUNT(*) AS TotalRooms FROM Rooms;
--Average room price per night
SELECT AVG(PricePerNight) AS AveragePrice FROM Rooms;
-- Count rooms per hotel
SELECT Hotel_ID, COUNT(*) AS RoomCount FROM Rooms GROUP BY Hotel_ID;
--Sum booking cost per guest
SELECT Guest_ID, SUM(BookingCost) AS TotalBooking FROM Bookings GROUP BY Guest_ID;
--Guests with total bookings > 5000
SELECT Guest_ID, SUM(BookingCost) AS TotalBooking
FROM Bookings
GROUP BY Guest_ID
HAVING SUM(BookingCost) > 5000;

------------------------------------------------------------- END Hotel Database -------------------------------------------------------------------
------------------------------------------------------------- Bank Database      -------------------------------------------------------------------
--Count total number of customers
SELECT COUNT(*) AS TotalCustomers FROM Customer;
--Average account balance
SELECT AVG(Balance) AS AverageBalance FROM Account;
--Count accounts per branch
SELECT BranchID, COUNT(*) AS AccountCount FROM Branch GROUP BY BranchID;
--Sum loan amounts per customer
SELECT CustomerID, SUM(Amount) AS TotalLoan FROM Loan GROUP BY CustomerID;
--Customers with total loan > 200000
SELECT CustomerID, SUM(Amount) AS TotalLoan
FROM Loan
GROUP BY CustomerID
HAVING SUM(Amount) > 2000;

------------------------------------------------------------- END Bank Database  -------------------------------------------------------------------
------------------------------------------------------------- Library Database   -------------------------------------------------------------------
-- Count total books
SELECT COUNT(*) AS TotalBooks FROM Book;
--Average book price
SELECT AVG(Price) AS AveragePrice FROM Book;
--Count books per library
SELECT Library_ID, COUNT(*) AS BookCount FROM Book GROUP BY Library_ID;
--Count books borrowed per member
SELECT Member_ID, COUNT(*) AS BorrowedBooks
FROM Loan
GROUP BY Member_ID;

--List members who borrowed more than 3 books
SELECT Member_ID, COUNT(*) AS BorrowedBooks
FROM Loan
GROUP BY Member_ID
HAVING COUNT(*) > 3;












