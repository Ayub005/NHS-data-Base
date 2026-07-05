SELECT COUNT(*) AS TotalAppointments
FROM appointment;
SELECT COUNT(*) AS TotalMedicationsGiven
FROM appointmentmedication;
SELECT AVG(Age) AS AveragePatientAge
FROM patient;
SELECT MIN(Age) AS YoungestPatient,
       MAX(Age) AS OldestPatient
FROM patient;
SELECT d.DoctorName,
       COUNT(a.AppointmentID) AS TotalAppointments
FROM doctor d
LEFT JOIN appointment a
    ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorName;
SELECT c.ClinicName,
       COUNT(a.AppointmentID) AS TotalAppointments
FROM clinic c
LEFT JOIN appointment a
    ON c.ClinicID = a.ClinicID
GROUP BY c.ClinicName;
SELECT m.MedicationName,
       COUNT(am.MedicationID) AS TimesPrescribed
FROM medication m
INNER JOIN appointmentmedication am
    ON m.MedicationID = am.MedicationID
GROUP BY m.MedicationName
ORDER BY TimesPrescribed DESC
LIMIT 1;
