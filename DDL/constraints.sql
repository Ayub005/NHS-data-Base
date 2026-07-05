ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_clinic
FOREIGN KEY (ClinicID) REFERENCES clinic(ClinicID);

ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_doctor
FOREIGN KEY (DoctorID) REFERENCES doctor(DoctorID);

ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_patient
FOREIGN KEY (PatientID) REFERENCES patient(PatientID);


ALTER TABLE appointmentmedication
ADD CONSTRAINT fk_am_appointment
FOREIGN KEY (AppointmentID) REFERENCES appointment(AppointmentID);

ALTER TABLE appointmentmedication
ADD CONSTRAINT fk_am_medication
FOREIGN KEY (MedicationID) REFERENCES medication(MedicationID);
