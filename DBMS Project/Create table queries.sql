create table Claimants (
	ClaimantID int auto_increment primary key,
    Cname varchar(50),
    DateOfBirth date,
    contactNumber varchar(15),
    email varchar(100),
    address text
);

create table Policies (
	PolicyID int auto_increment primary key,
    PolicyType varchar(50),
    CoverageAmount decimal(10, 2),
    Premium Decimal(10, 2),
    StartDate date,
    endDate date
);

create table Claims (
	ClaimID int auto_increment primary key,
    ClaimantID int,
    PolicyID int,
    ClaimDate date,
    ClaimAmount decimal(10, 2),
    ClaimStatus enum('Pending', 'Approved', 'Rejected'),
    foreign key (ClaimantID) references Claimants(ClaimantID),
    foreign key (PolicyID) references Policies(PolicyID)
);

CREATE TABLE Adjusters (
    AdjusterID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE ClaimAdjustments (
    AdjustmentID INT AUTO_INCREMENT PRIMARY KEY,
    ClaimID INT,
    AdjusterID INT,
    AdjustmentAmount DECIMAL(10, 2),
    AdjustmentDate DATE,
    Comments TEXT,
    FOREIGN KEY (ClaimID) REFERENCES Claims(ClaimID),
    FOREIGN KEY (AdjusterID) REFERENCES Adjusters(AdjusterID)
);