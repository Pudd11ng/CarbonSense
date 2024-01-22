CREATE TABLE `users` (
  `UserID` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `Email` varchar(255) UNIQUE NOT NULL,
  `IC` varchar(20) UNIQUE DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `AddressProof` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Role` varchar(20) DEFAULT 'USER',
  `Status` varchar(20) DEFAULT 'DISAPPROVE'
);

CREATE TABLE `application` (
  `ApplicationID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `UserID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `WaterProportionalFactor` decimal(10,2) DEFAULT NULL,
  `WaterUsageValueRM` decimal(10,2) DEFAULT NULL,
  `WaterUsageValueM3` decimal(10,2) DEFAULT NULL,
  `WaterConsumptionProof` varchar(255) DEFAULT NULL,
  `ElectricityProportionalFactor` decimal(10,2) DEFAULT NULL,
  `ElectricUsageValueRM` decimal(10,2) DEFAULT NULL,
  `ElectricUsageValueM3` decimal(10,2) DEFAULT NULL,
  `ElectricConsumptionProof` varchar(255) DEFAULT NULL,
  `RecycleKG` decimal(10,2) DEFAULT NULL,
  `RecycleRM` decimal(10,2) DEFAULT NULL,
  `RecycleProof` varchar(255) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'PENDING',
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);