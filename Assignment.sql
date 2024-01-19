
--- Task-1 ---

/* Creating database */ 
CREATE DATABASE Courier_db;


/* Creating User Table */
CREATE TABLE Userr
(
  UserId INT PRIMARY KEY,
  Name VARCHAR(255),
  Email VARCHAR(255) UNIQUE,
  Password VARCHAR(255),
  Contact_Number VARCHAR(20),
  Address TEXT
);


/* Inserting dummy data */ 
INSERT INTO Userr VALUES
(1,'Prakash', 'prakash1@gmail.com', 'Prakash1@', '1818181818', 'Delhi'),
(2,'Gaurav', 'gaurav2@gmail.com', 'Gaurav2@', '2222222222', 'Gurgaon'),
(3,'Adarsh', 'adarsh3@gmail.com', 'Adarsh3@', '9999999999', 'Chennai'),
(4,'Manish', 'manish4@gmail.com', 'Manish4@', '2323232323', 'Lucknow'),
(5,'Bhavesh', 'bhavesh5@gmail.com', 'Bhavesh5@', '9876598765', 'Bangalore'),
(6,'Arijit', 'arijit6@gmail.com', 'Arijit6@', '6767676767', 'Banaras'),
(7,'Anurag', 'anurag7@gmail.com', 'Anurag7@', '1231231237', 'Kanpur'),
(8,'Saroj', 'saroj8@gmail.com', 'Saroj8@', '5353535353', 'Chandigarh'),
(9,'Sayan', 'sayan9@gmail.com', 'Sayan9@', '4949494949', 'Jharkhand'),
(10,'Ajay', 'ajay10@gmail.com', 'Ajay10@', '8080808080', 'Delhi'); 


/* Creating Courier Table */ 
CREATE TABLE Courier 
(
  CourierID INT PRIMARY KEY,
  Sender_Name VARCHAR(255),
  Sender_Address TEXT,
  Receiver_Name VARCHAR(255),
  Receiver_Address TEXT,
  Weight DECIMAL(5, 2),
  Status VARCHAR(50),
  Tracking_Number VARCHAR(20) UNIQUE,
  Delivery_Date DATE
); 


/* Adding ServiceId as ForeignKey in Courier Table */ 
ALTER TABLE Courier ADD ServiceId INT, FOREIGN KEY(ServiceId) REFERENCES CourierServices(ServiceId)

/* Adding EmoloyeeId as ForeignKey in Courier Table */
ALTER TABLE Courier ADD EmployeeId INT, FOREIGN KEY(EmployeeId) REFERENCES Employee(EmployeeId);

/* Adding UserId as ForeignKey in Courier Table */
ALTER TABLE Courier ADD UserId INT, FOREIGN KEY(UserId) REFERENCES Userr(UserId);

/* Setting values for ServiceId, EmployeeId Columns in Courier Table */ 
UPDATE Courier SET ServiceId = 1001 , EmployeeId = 20 where CourierID = 101;
UPDATE Courier SET ServiceId = 1001 , EmployeeId = 22 where CourierID = 102;
UPDATE Courier SET ServiceId = 1002 , EmployeeId = 22 where CourierID = 103;
UPDATE Courier SET ServiceId = 1003 , EmployeeId = 24 where CourierID = 104;
UPDATE Courier SET ServiceId = 1003 , EmployeeId = 26 where CourierID = 105;
UPDATE Courier SET ServiceId = 1005 , EmployeeId = 26 where CourierID = 106;
UPDATE Courier SET ServiceId = 1005 , EmployeeId = 28 where CourierID = 107;
UPDATE Courier SET ServiceId = 1008 , EmployeeId = 30 where CourierID = 108;
UPDATE Courier SET ServiceId = 1009 , EmployeeId = 32 where CourierID = 109;
UPDATE Courier SET ServiceId = 1008 , EmployeeId = 30 where CourierID = 110;


/* Inserting dummy data */ 
INSERT INTO Courier VALUES
(101,'Pritam', 'Bangalore', 'Prakash', 'Indore', 122.23,'In Transit','TRA12', '2024-1-15'),
(102,'Nitesh', 'Kolkata', 'Gaurav', 'Andheri', 211.21,'Delivered','TRA13','2024-1-16'),
(103,'Krishna', 'Jaipur', 'Adarsh', 'Hyderabad', 400.00,'Out for Delivery','TRA14','2024-1-18'),
(104,'Krishna', 'Hariyana', 'Praksh', 'Indore',675.75, 'In Transit','TRA15','2024-1-19'),
(105,'Rajesh', 'Odisha', 'Bhavesh', 'Goa', 325.00,'In Transit','TRA16', '2024-1-16'),
(106,'Harsh', 'Kolkata', 'Adarsh', 'Hyderabad', 150.00,'Delivered','TRA17', '2024-1-18'),
(107,'Abishek', 'Jaipur', 'Anurag', 'Goa', 200.00,'Out for Delivery','TRA18','2024-1-18'),
(108,'Santu', 'Bangalore', 'Saroj', 'Dehradun', 250.00,'Packed','TRA19', '2024-1-19'),
(109,'Harsh', 'Noida', 'Saroj', 'Dehradun', 200.00,'Out for Delivery','TRA20','2024-1-18'),
(110,'Pritam', 'Nagpur', 'Ajay', 'Kolkata', 350.00,'Delivered','TRA21','2024-1-17');


/* Creating Courier_Services Table */ 
CREATE TABLE CourierServices 
(
  ServiceID INT PRIMARY KEY,
  ServiceName VARCHAR(100),
  Cost DECIMAL(8, 2)
); 

/* Inserting dummy data */
INSERT INTO CourierServices VALUES
(1001,'Delhivery',70.00),
(1002,'DTDC',60.00),
(1003,'Blue Dart',45.00),
(1004,'FedEx',55.00),
(1005,'Ekart',30.00),
(1006,'Gati',60.00),
(1007,'DHL',70.00),
(1008,'Ratna',1000.00),
(1009,'FastCom',700.00),
(1010,'Express',500.00);


/* Creating Employee Table */ 
CREATE TABLE Employee 
(
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(255),
  Email VARCHAR(255) UNIQUE,
  ContactNumber VARCHAR(20),
  Role VARCHAR(50),
  Salary DECIMAL(10, 2)
); 

/* Inserting dummy data */
INSERT INTO Employee VALUES 
(20,'Rohit Pandey','rohit45@gmail.com','4545454545','SDE',65000.00),
(22,'Nitin Sharma','nitin32sharma@gmail.com','1212121212','HR',85000.00),
(24,'Manish Pandey','manish11@gmail.com','1111111111','OPS',42000.00),
(26,'Ayush Pathak','pathak.ayush@gmail.com','1234512345','SDE',55000.00),
(28,'Shubham Gupta','subham76gupta@gmail.com','7676767676','HR',51000.00),
(30,'Sunil Kumar','sunilk@gmail.com','9292929292','Finance',40000.00),
(32,'Chirag Goswami','goswamichirag@gmail.com','5656565656','Finance',35000.00),
(34,'Alok Sarkar','alok34@gmail.com','3434343434','Devops',30000.00),
(36,'Ram Sen','Ram36s@gmail.com','3636363636','Devops',45000.00),
(38,'Siddharth Nanda','Sid38nanda@gmail.com','3838383838','ML',50000.00);



/* Creating Location Table */ 
CREATE TABLE Location 
(
  LocationID INT PRIMARY KEY,
  Location_Name VARCHAR(100),
  Address TEXT
);


/* Inserting dummy data */
INSERT INTO Location VALUES 
(1,'Hyderabad','Address 1'),
(5,'Mysore', 'Address 2'),
(2,'Andheri','Address 3'),
(6,'Goa', 'Address 4'),
(7,'Raipur', 'Address 5'), 
(8,'Delhi','Address 6'),
(9,'Rajasthan', 'Address 7'),
(11,'Bokaro','Address 8'),
(13,'Bhopal', 'Address 9'),
(15,'Bihar','Address 10');



/* Creating Payment Table */ 
CREATE TABLE Payment 
(
  PaymentID INT PRIMARY KEY,
  CourierID INT,
  LocationId INT,
  Amount DECIMAL(10, 2),
  PaymentDate DATE,
  FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
  FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
)

/* Inserting Raw Data */ 
INSERT INTO Payment VALUES 
(1,101,1,70.00,'2024-01-13'),
(3,102,2,80.00,'2024-01-15'),
(4,104,6,55.00,'2024-01-14'),
(5,105,7,45.00,'2024-01-14'),
(7,103,5,60.00,'2024-01-13'),
(9,106,7,30.00,'2024-01-16'),
(11,107,2,40.00,'2024-01-15'),
(13,108,9,600.00,'2024-01-13'),
(15,109,9,700.00,'2024-01-15'),
(17,110,11,1100.00,'2024-01-15');





/* Task2 - select, Where */ 

/* 1. List all customers: */
SELECT * FROM Userr 

/* 2.  List all orders for a specific customer: */
SELECT * FROM Userr WHERE Name = 'Kl Rahul'

/* 3.   List all couriers: : */
SELECT * FROM Courier 

/* 4.   List all packages for a specific order: */
SELECT * FROM Courier WHERE Receiver_Name = 'Gaurav'

/* 5.   List all deliveries for a specific courier: */
SELECT cs.ServiceID, cs.ServiceName, c.CourierID FROM CourierServices cs JOIN Courier c on cs.ServiceID = c.ServiceId 

/* 6.    List all undelivered packages: */
SELECT * FROM Courier WHERE Status <> 'Delivered'

/* 7.    List all packages that are scheduled for delivery today: */
SELECT * FROM Courier WHERE Status = 'Out for Delivery'

/* 8.    List all packages with a specific status: */
SELECT * FROM Courier WHERE Status = 'In Transit'

/* 9.    Calculate the total number of packages for each courier. */
SELECT cs.ServiceID, cs.ServiceName, COUNT(*) AS Total_Packages FROM CourierServices cs JOIN Courier c on cs.ServiceID = c.ServiceId GROUP BY cs.ServiceID, cs.ServiceName


/* 10.      Find the average delivery time for each courier */
SELECT  AVG(DAY(Delivery_Date)) as Average_delivery_time FROM Courier

/* 11.  List all packages with a specific weight range: */
SELECT * FROM Courier WHERE Weight >= 200 AND weight <= 450 

/* 12.  Retrieve employees whose names contain 'John'*/
SELECT * FROM Employee WHERE Name LIKE '%John%'

/* 13.  Retrieve all courier records with payments greater than $50.*/
SELECT * FROM Courier WHERE CourierID IN(SELECT CourierID FROM Payment WHERE Amount > 50)



/* Task-3 */ 

/* 14.  Find the total number of couriers handled by each employee. */
SELECT EmployeeId, COUNT(*) AS Total_Couriers FROM Courier GROUP BY EmployeeId 

/* 15.  Calculate the total revenue generated by each location  */
SELECT LocationId, SUM(AMOUNT) AS Total_Revenue FROM Payment GROUP BY LocationId 

/* 16.  Find the total number of couriers delivered to each location.   */
SELECT LocationId, COUNT(*) AS Total_Couriers FROM Payment GROUP BY LocationId  

/* 17.  Find the courier with the highest average delivery time:  */
SELECT c.CourierID, c.Sender_Name, c.Receiver_Name,  DATEDIFF(DAY,p.PaymentDate,c.Delivery_Date) AS Total_Days FROM Courier c 
JOIN Payment p 
ON c.CourierID = p.CourierID 
ORDER BY Total_Days DESC offset 0 ROWS
FETCH NEXT 1 ROWS only

/* 18.  Find Locations with Total Payments Less Than a Certain Amount */ 
SELECT LocationId, SUM(AMOUNT) as Total_Payment FROM Payment GROUP BY LocationId HAVING SUM(AMOUNT) < 200

/* 19.   Calculate Total Payments per Location  */ 
SELECT LocationId, SUM(AMOUNT) as Total_Payment FROM Payment GROUP BY LocationId 

/* 20.   Retrieve couriers who have received payments totaling more than $1000 in a specific location (LocationID = X)  */ 
SELECT c.CourierID, c.Sender_Name, c.Receiver_Name, SUM(p.Amount) AS Total_Amount FROM Courier c JOIN Payment p ON c.CourierID = p.CourierID 
WHERE p.LocationId = 11 GROUP BY c.CourierID,c.Sender_Name, c.Receiver_Name HAVING SUM(p.Amount) > 1000


/* 21.   Retrieve couriers who have received payments totaling more than $1000 after a certain date (PaymentDate > 'YYYY-MM-DD'):   */ 
SELECT CourierID, SUM(Amount) AS Total_Payment, PaymentDate FROM Payment GROUP BY CourierID,PaymentDate HAVING SUM(Amount) > 1000 and PaymentDate > '2024-01-14'


/* 22.   Retrieve couriers who have received payments totaling more than $1000 before a certain date (PaymentDate > 'YYYY-MM-DD'):   */ 
SELECT CourierID, SUM(Amount) AS Total_Payment, PaymentDate FROM Payment GROUP BY CourierID,PaymentDate HAVING SUM(Amount) > 1000 and PaymentDate < '2024-01-16'


--- Task 4: Inner Join,Full Outer Join, Cross Join, Left Outer Join,Right Outer Join  --- 

--- 23. Retrieve Payments with Courier Information --- 
SELECT  p.PaymentID, p.LocationId, p.Amount, p.PaymentDate, c.* FROM Payment p JOIN Courier c on p.CourierID = c.CourierID

--- 24. Retrieve Payments with Location Information  --- 
SELECT  p.*, l.Location_Name, l.Address FROM Payment p JOIN Location l on p.LocationId = l.LocationID

--- 25. Retrieve Payments with Courier and Location Information   --- 
SELECT  p.*, c.Sender_Name, c.Sender_Address, c.Receiver_Name, c.Receiver_Address, c.Weight, c.Status, c.Tracking_Number, 
c.Delivery_Date, c.ServiceId, c.EmployeeId, l.Location_Name, l.Address
FROM Payment p 
JOIN 
Courier c ON p.CourierID = c.CourierID 
JOIN 
Location l ON p.LocationId = l.LocationID

--- 26. List all payments with courier details   --- 
SELECT  p.PaymentID, p.LocationId, p.Amount, p.PaymentDate, c.* FROM Payment p JOIN Courier c ON p.CourierID = c.CourierID

--- 27. Total payments received for each courier    --- 
SELECT  c.CourierID, p.Amount AS Total_Payment FROM Courier c JOIN Payment p ON c.CourierID = p.CourierID

--- 28. List payments made on a specific date    --- 
SELECT PaymentID, Amount FROM Payment WHERE PaymentDate = '2024-01-15'

--- 29. Get Courier Information for Each Payment     --- 
SELECT  p.PaymentID, c.* FROM Payment p JOIN Courier c ON p.CourierID = c.CourierID 

--- 30. Get Payment Details with Location  --- 
SELECT  p.*, l.Location_Name, l.Address FROM Payment p JOIN Location l ON p.LocationId = l.LocationID 

--- 31. Calculating Total Payments for Each Courier --- 
SELECT  c.CourierID, p.Amount AS Total_Payment FROM Courier c JOIN Payment p ON c.CourierID = p.CourierID

--- 32.  List Payments Within a Date Range --- 
SELECT * FROM Payment WHERE PaymentDate BETWEEN '2024-01-13' AND '2024-01-14'

--- 33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side  --- 
Select u.userId, u.Name, c.Sender_Name, c.Sender_Address, c.Weight, c.Status, c.Tracking_Number, c.Delivery_Date 
FROM Userr u FULL OUTER JOIN Courier c ON u.UserId = c.UserId

--- 34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side  --- 
SELECT c.*, cs.ServiceName, cs.Cost FROM Courier c FULL OUTER JOIN CourierServices cs ON c.ServiceId = cs.ServiceID

--- 35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side  --- 
SELECT e.EmployeeID, e.Name, e.Email, p.* FROM 
Employee e JOIN Courier c ON e.EmployeeID = c.EmployeeId 
JOIN Payment p ON c.CourierID = p.CourierID

--- 36. List all users and all courier services, showing all possible combinations  --- 
SELECT u.*, cs.* FROM Userr u CROSS JOIN CourierServices cs

--- 37. List all employees and all locations, showing all possible combinations:  --- 
SELECT e.* , l.* FROM Employee e CROSS JOIN Location l

--- 38. Retrieve a list of couriers and their corresponding sender information (if available)   --- 
(Not available for the schema) 

--- 39. Retrieve a list of couriers and their corresponding receiver information (if available) --- 
SELECT c.Receiver_Name, u.UserId , u.Email, u.Contact_Number, u.Address  
FROM Courier c JOIN Userr u ON c.UserId = u.UserId

--- 40. Retrieve a list of couriers along with the courier service details (if available) --- 
SELECT c.CourierID, c.ServiceId, cs.ServiceName, cs.Cost
FROM Courier c JOIN CourierServices cs ON c.ServiceId = cs.ServiceID

--- 41. Retrieve a list of employees and the number of couriers assigned to each employee:  --- 
SELECT c.EmployeeId, e.Name, COUNT(*) AS Total_No_Of_Couriers FROM
Courier c JOIN Employee e ON c.EmployeeId = e.EmployeeID 
GROUP BY c.EmployeeId,e.Name

--- 42. Retrieve a list of locations and the total payment amount received at each location --- 
SELECT l.LocationID, SUM(p.Amount) FROM Location l 
JOIN Payment p ON l.LocationID = p.LocationId GROUP BY l.LocationID 

--- 43. Retrieve all couriers sent by the same sender (based on SenderName) --- 
SELECT a.CourierID, a.Sender_Name, a.Sender_Address, a.Receiver_Name, a.Receiver_Address, a.Weight, a.Status, a.Tracking_Number, a.ServiceId 
FROM Courier a JOIN Courier b ON a.CourierID = b.CourierID AND b.Sender_Name = 'Krishna'

--- 44. List all employees who share the same role.  --- 
SELECT a.EmployeeID, a.Name, a.Email, a.Role 
FROM Employee a JOIN Employee b ON a.EmployeeID = b.EmployeeID AND b.Role = 'DEVOPS'

--- 45. Retrieve all payments made for couriers sent from the same location  --- 
SELECT p1.* FROM Payment P1 JOIN Payment p2 ON p1.PaymentID = p2.PaymentID AND p2.LocationId = 7 

--- 46. Retrieve all couriers sent from the same location (based on SenderAddress). --- 
SELECT a.CourierID, a.Sender_Name, a.Sender_Address, a.Receiver_Name, a.Receiver_Address, a.Weight, a.Status, a.Tracking_Number, a.ServiceId 
FROM Courier a JOIN Courier b ON a.CourierID = b.CourierID AND CONVERT(VARCHAR, b.Sender_Address) = 'Jaipur'
 
 --- 47. List employees and the number of couriers they have delivered: --- 
SELECT c.EmployeeId, e.Name, e.Email, COUNT(*) AS Number_Of_Couriers FROM Courier c JOIN Employee e 
ON c.EmployeeId = e.EmployeeID GROUP BY c.EmployeeId, e.Name, e.Email

--- 48. Find couriers that were paid an amount greater than the cost of their respective courier services  --- 
SELECT c.CourierId, c.ServiceId, cs.ServiceName, cs.Cost, p.amount 
FROM Payment p JOIN Courier C ON p.CourierID = c.CourierID 
JOIN CourierServices cs ON c.ServiceId = cs.ServiceID WHERE p.Amount > cs.Cost


--- Scope: Inner Queries, Non Equi Joins, Equi joins,Exist,Any,All ---

--- 49. Find couriers that have a weight greater than the average weight of all couriers --- 
SELECT * FROM Courier WHERE Weight > (SELECT AVG(Weight) FROM Courier)

--- 50. Find the names of all employees who have a salary greater than the average salary: --- 
SELECT Name FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee)

--- 51. Find the total cost of all courier services where the cost is less than the maximum cost --- 
SELECT SUM(Cost) AS Total_Cost FROM CourierServices WHERE Cost < (SELECT Max(Cost) FROM CourierServices)

--- 52. Find all couriers that have been paid for  --- 
SELECT * FROM Courier WHERE CourierId IN (SELECT CourierID FROM Payment) 

--- 53. Find the locations where the maximum payment amount was made --- 
SELECT LocationID , SUM(Amount) AS Total_Payment FROM Payment GROUP BY LocationId ORDER BY SUM(Amount) DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY

--- 54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender (e.g., 'SenderName'):  --- 
SELECT * FROM Courier WHERE Weight > (SELECT SUM(Weight) FROM Courier WHERE Sender_Name = 'Pritam')