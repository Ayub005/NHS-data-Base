INSERT INTO `nhs_db`.`patient`
(`PatientID`,
`PatientCode`,
`PatientName`,
`Address`)
VALUES
(<{PatientID: }>,
<{PatientCode: }>,
<{PatientName: }>,
<{Address: }>);

INSERT INTO `nhs_db`.`doctor`
(`DoctorID`,
`DoctorName`,
`Specialty`)
VALUES
(<{DoctorID: }>,
<{DoctorName: }>,
<{Specialty: }>);

INSERT INTO `nhs_db`.`clinic`
(`ClinicID`,
`ClinicName`,
`ClinicAddress`)
VALUES
(<{ClinicID: }>,
<{ClinicName: }>,
<{ClinicAddress: }>);

INSERT INTO `nhs_db`.`medication`
(`MedicationID`,
`MedicationName`)
VALUES
(<{MedicationID: }>,
<{MedicationName: }>);

INSERT INTO `nhs_db`.`appointment`
(`AppointmentID`,
`PatientID`,
`DoctorID`,
`ClinicID`,
`AppointmentDate`,
`AppointmentTime`,
`Notes`)
VALUES
(<{AppointmentID: }>,
<{PatientID: }>,
<{DoctorID: }>,
<{ClinicID: }>,
<{AppointmentDate: }>,
<{AppointmentTime: }>,
<{Notes: }>);

INSERT INTO `nhs_db`.`appointmentmedication`
(`AppointmentMedicationID`,
`AppointmentID`,
`MedicationID`)
VALUES
(<{AppointmentMedicationID: }>,
<{AppointmentID: }>,
<{MedicationID: }>);

INSERT INTO `nhs_db`.`prescription`
(`PrescriptionID`,
`PatientID`,
`DoctorID`,
`MedicationID`,
`DatePrescribed`,
`Dosage`,
`Instructions`)
VALUES
(<{PrescriptionID: }>,
<{PatientID: }>,
<{DoctorID: }>,
<{MedicationID: }>,
<{DatePrescribed: }>,
<{Dosage: }>,
<{Instructions: }>);

INSERT INTO `nhs_db`.`patientlogin`
(`LoginID`,
`PatientID`,
`Username`,
`PasswordHash`)
VALUES
(<{LoginID: }>,
<{PatientID: }>,
<{Username: }>,
<{PasswordHash: }>);


