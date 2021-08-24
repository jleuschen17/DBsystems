CREATE TABLE InsuranceCo (
    name VARCHAR(100) PRIMARY KEY,
    phone INT
);
CREATE TABLE Vehicle (
    licensePlate VARCHAR(100) PRIMARY KEY,
    year INT
);
CREATE TABLE Person (
    name VARCHAR(100),
    ssn INT PRIMARY KEY
);
CREATE TABLE Driver (
    driverID INT,
    ssn INT PRIMARY KEY REFERENCES Person,
    name VARCHAR(100) REFERENCES Person
);
CREATE TABLE CAR (
    make VARCHAR(100),
    year INT REFERENCES Vehicle,
    licensePlate VARCHAR(100) PRIMARY KEY REFERENCES Vehicle
);
CREATE TABLE Truck (
    capacity INT,
    year INT REFERENCES Vehicle,
    licensePlate VARCHAR(100) PRIMARY KEY REFERENCES Vehicle
);
CREATE TABLE NonProfessionalDriver (
    driverID INT REFERENCES Driver,
    name VARCHAR(100) REFERENCES Person,
    ssn INT PRIMARY KEY REFERENCES Person
);
CREATE TABLE ProfessionalDriver (
    medicalHistory VARCHAR(100),
    driverID INT REFERENCES Driver,
    name VARCHAR(100) REFERENCES Person,
    ssn INT PRIMARY KEY REFERENCES Person
);
CREATE TABLE Operates (
    driver_ssn INT UNIQUE REFERENCES ProfessionalDriver,
    licensePlate VARCHAR(100),
    PRIMARY KEY (driver_ssn, licensePlate),
    FOREIGN KEY (licensePlate) REFERENCES Truck
);
CREATE TABLE Drives (
    driver_ssn   INT,
    licensePlate VARCHAR(100),
    PRIMARY KEY (driver_ssn, licensePlate),
    FOREIGN KEY (driver_ssn) REFERENCES NonProfessionalDriver,
    FOREIGN KEY (licensePlate) REFERENCES Car
);
CREATE TABLE Owns (
    licensePlate VARCHAR(100) REFERENCES Vehicle,
    driver_ssn INT UNIQUE REFERENCES Person,
    PRIMARY KEY(driver_ssn,licensePlate)
);
CREATE TABLE Insures (
    maxLiability INT NOT NULL,
    customer_name VARCHAR(100) UNIQUE REFERENCES InsuranceCo,
    licensePlate VARCHAR(100) REFERENCES Vehicle,
    PRIMARY KEY (customer_name, licensePlate)
)
