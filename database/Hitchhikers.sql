DROP DATABASE if exists Hitchhikers;

CREATE DATABASE Hitchhikers; 

USE  Hitchhikers; 

/*
** Total Users of Hitchhikers
*/
CREATE TABLE `TotalUsers` (
	`userID` INT(11) auto_increment NOT NULL, 
    `Username` VARCHAR(50) NOT NULL,
    `Password` VARCHAR(50) NOT NULL, 
    `Email` VARCHAR(50) NOT NULL, 
    `Age` INT(11) NOT NULL,
    `PhoneNumber` VARCHAR(50) NOT NULL,
    `Picture` VARCHAR(50) NOT NULL,
    `isDriver` TINYINT(1) DEFAULT '0' NOT NULL, 
    PRIMARY KEY(`userID`) 
);

CREATE TABLE `TotalPreviousTrips` (
	`userID` INT(11) NOT NULL,
	`Username` VARCHAR(50) NOT NULL,
    `StartingPoint` VARCHAR(50) NOT NULL,
    `DestinationPoint` VARCHAR(50) NOT NULL, 
    `CarModel` VARCHAR(50) NOT NULL,
    `LicensePlate` VARCHAR(50) NOT NULL,
    `Cost` INT(11) NOT NULL, 
    `Date/Time` VARCHAR(50) NOT NULL,
    `Detours` VARCHAR(50) NOT NULL,
    `Hospitality` VARCHAR(100) NOT NULL,
    `Food` VARCHAR(50) NOT NULL,
    `Luggage` VARCHAR(50) NOT NULL,
    FOREIGN KEY(`userID`) REFERENCES `TotalUsers`(`userID`)
);

CREATE TABLE `CurrentTrips` (
	`userID` INT(11) NOT NULL,
    `Username` VARCHAR(50) NOT NULL,
    `StartingPoint` VARCHAR(50) NOT NULL,
    `DestinationPoint` VARCHAR(50) NOT NULL, 
    `CarModel` VARCHAR(50) NOT NULL,
    `LicensePlate` VARCHAR(50) NOT NULL,
    `Cost` INT(11) NOT NULL, 
    `Date/Time` VARCHAR(50) NOT NULL,
    `Detours` VARCHAR(50) NOT NULL,
    `Hospitality` VARCHAR(100) NOT NULL,
    `Food` VARCHAR(50) NOT NULL,
    `Luggage` VARCHAR(50) NOT NULL,
    FOREIGN KEY(`userID`) REFERENCES `TotalUsers`(`userID`)
);

INSERT INTO `TotalUsers`( Username, Password, Email, `Age` ,`PhoneNumber`, `Picture`,isDriver ) VALUES  ('Adam', 'mypassword', 'adamespi@usc.edu', 20, '6267560235', 'swag.com', 1);
INSERT INTO `TotalPreviousTrips`( userID,Username,StartingPoint, DestinationPoint, CarModel, LicensePlate, Cost, `Date/Time`, Detours, Hospitality, Food, Luggage) VALUES (1,'Adam','San Fracisco,CA', 'Los Angeles', 'Honda Civic' , '64j74k', 25, 'jlksjdf', 'no detours', 'gimme a pillow', 'i have snaks', 'no space');
INSERT INTO `CurrentTrips`( userID,Username,StartingPoint, DestinationPoint, CarModel, LicensePlate, Cost, `Date/Time`, Detours, Hospitality, Food, Luggage) VALUES (1,'Adam','1816 NW 127th Pl, Portland, OR', 'Voodoo Doughnut', 'Bugatti Veyron' , '309EAK', 10, '4:20AM', 'no detours', 'gimme a pillow', 'i have snaks', 'no space');
INSERT INTO `CurrentTrips`( userID,Username,StartingPoint, DestinationPoint, CarModel, LicensePlate, Cost, `Date/Time`, Detours, Hospitality, Food, Luggage) VALUES (1,'Adam','1816 NW 127th Pl, Portland, OR', 'Voodoo Doughnut', 'Bugatti Veyron' , '309EAK', 10, '4:20AM', 'all the detours', 'ughhhhh hospitality', 'i got food tho', 'bring ur house');

/*SELECT u.Username FROM `TotalPreviousTrips` t, `TotalUsers` u 
WHERE t.userID = u.userID */