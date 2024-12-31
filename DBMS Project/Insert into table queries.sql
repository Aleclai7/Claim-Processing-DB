INSERT INTO Claimants (CName, DateOfBirth, ContactNumber, Email, Address)
VALUES 
('John Doe', '1985-05-15', '1234567890', 'john.doe@example.com', '123 Elm St'),
('Jane Smith', '1990-07-20', '9876543210', 'jane.smith@example.com', '456 Oak Ave'),
('Pragyan Shrestha', '2004-06-25', '981230456', 'pragyan@gmail.com', 'St. 41 28 Kilo'),
('Gaurab Khanal', '2003-06-20', '9786542031','gaurabk@gmail.com', 'St. 41 28 Kilo'),
('Prabal Shakya', '2004-05-05', '9812345670', 'prabals@gmail.com', 'Chardobato, Banepa'),
('Shreejan Karmacharaya', '2003-10-27', '9807065431', 'karmacharayas@gmail.com', 'Ratnapark, Kathmandu'),
('Neo Shakya', '2004-08-04', '9869693169', 'shakyaneo@gmail.com', 'St. 41 28 Kilo');


INSERT INTO Policies (PolicyType, CoverageAmount, Premium, StartDate, EndDate)
VALUES 
('Health', 50000.00, 500.00, '2023-01-01', '2023-12-31'),
('Vehicle', 100000.00, 1200.00, '2023-06-01', '2024-05-31'),
('Life', 1500000.00, 2000, '2021-01-25', '2050-06-01');


INSERT INTO Claims (ClaimantID, PolicyID, ClaimDate, ClaimAmount, ClaimStatus)
VALUES 
(1, 1, '2023-08-01', 3000.00, 'Approved'),
(2, 2, '2023-09-15', 20000.00, 'Pending'),
(3, 3, '2024-12-19', 1000000.00, 'Rejected'),
(4, 1, '2024-10-18', 10000.00, 'Approved'),
(5, 2, '2024-11-09', 45000.00, 'Pending'),
(7, 1, '2024-10-13', 12000.00, 'Pending');


INSERT INTO Adjusters (Name, ContactNumber, Email)
VALUES 
('Alice Johnson', '1122334455', 'alice.johnson@example.com'),
('Bob Brown', '5566778899', 'bob.brown@example.com'),
('Random Name', '0009998172', 'randomtf@example.com'),
('Naruto Uzumaki', '001297978', '7hokage@konoha.com');


INSERT INTO ClaimAdjustments (ClaimID, AdjusterID, AdjustmentAmount, AdjustmentDate, Comments)
VALUES 
(1, 1, 2500.00, '2023-08-05', 'Claim adjusted due to partial coverage'),
(2, 2, 18000.00, '2023-09-20', 'Adjustment pending final approval'),
(3, 4, 0.00, '2024-12-19', 'Claim rejected as the subject is alive'),
(5, 3, 40000, '2024-11-30', 'Adjustment pending final approval');
