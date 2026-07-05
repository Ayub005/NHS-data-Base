CREATE TABLE `patient` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `PatientCode` varchar(10) DEFAULT NULL,
  `PatientName` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `PatientCode` (`PatientCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `doctor` (
  `DoctorID` int NOT NULL AUTO_INCREMENT,
  `DoctorName` varchar(100) NOT NULL,
  `Specialty` varchar(100) NOT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `clinic` (
  `ClinicID` int NOT NULL AUTO_INCREMENT,
  `ClinicName` varchar(100) NOT NULL,
  `ClinicAddress` varchar(200) NOT NULL,
  PRIMARY KEY (`ClinicID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `appointment` (
  `AppointmentID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `DoctorID` int NOT NULL,
  `ClinicID` int NOT NULL,
  `AppointmentDate` date NOT NULL,
  `AppointmentTime` time NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`),
  KEY `fk_appointment_patient` (`PatientID`),
  KEY `fk_appointment_doctor` (`DoctorID`),
  KEY `fk_appointment_clinic` (`ClinicID`),
  CONSTRAINT `fk_appointment_clinic` FOREIGN KEY (`ClinicID`) REFERENCES `clinic` (`ClinicID`),
  CONSTRAINT `fk_appointment_doctor` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`),
  CONSTRAINT `fk_appointment_patient` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `appointmentmedication` (
  `AppointmentMedicationID` int NOT NULL AUTO_INCREMENT,
  `AppointmentID` int NOT NULL,
  `MedicationID` int NOT NULL,
  PRIMARY KEY (`AppointmentMedicationID`),
  KEY `AppointmentID` (`AppointmentID`),
  KEY `MedicationID` (`MedicationID`),
  CONSTRAINT `appointmentmedication_ibfk_1` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment` (`AppointmentID`),
  CONSTRAINT `appointmentmedication_ibfk_2` FOREIGN KEY (`MedicationID`) REFERENCES `medication` (`MedicationID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `medication` (
  `MedicationID` int NOT NULL AUTO_INCREMENT,
  `MedicationName` varchar(100) NOT NULL,
  PRIMARY KEY (`MedicationID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `patientlogin` (
  `LoginID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(128) NOT NULL,
  PRIMARY KEY (`LoginID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `patientlogin_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `prescription` (
  `PrescriptionID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `MedicationID` int DEFAULT NULL,
  `DatePrescribed` date DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL,
  `Instructions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PrescriptionID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `MedicationID` (`MedicationID`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`),
  CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`MedicationID`) REFERENCES `medication` (`MedicationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
