SELECT
    a.AppointmentID,
    a.AppointmentDate,
    a.AppointmentTime,
    p.PatientName,
    d.DoctorName,
    c.ClinicName,
    m.MedicationName
FROM appointment a
INNER JOIN patient p
    ON a.PatientID = p.PatientID
INNER JOIN doctor d
    ON a.DoctorID = d.DoctorID
INNER JOIN clinic c
    ON a.ClinicID = c.ClinicID
INNER JOIN appointmentmedication am
    ON a.AppointmentID = am.AppointmentID
INNER JOIN medication m
    ON am.MedicationID = m.MedicationID
ORDER BY a.AppointmentID;

SELECT
    p.PatientName,
    a.AppointmentID,
    a.AppointmentDate,
    a.AppointmentTime
FROM patient p
LEFT JOIN appointment a
    ON p.PatientID = a.PatientID
ORDER BY p.PatientName;


SELECT
    d.DoctorName,
    c.ClinicName
FROM doctor d
INNER JOIN appointment a
    ON d.DoctorID = a.DoctorID
INNER JOIN clinic c
    ON a.ClinicID = c.ClinicID
GROUP BY d.DoctorName, c.ClinicName;

SELECT
    pr.PrescriptionID,
    p.PatientName,
    d.DoctorName,
    m.MedicationName,
    pr.Dosage,
    pr.Instructions
FROM prescription pr
INNER JOIN patient p
    ON pr.PatientID = p.PatientID
INNER JOIN doctor d
    ON pr.DoctorID = d.DoctorID
INNER JOIN medication m
    ON pr.MedicationID = m.MedicationID;
