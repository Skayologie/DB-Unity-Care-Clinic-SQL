
-- Insert Data For patients Table
INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES
('Michael', 'Johnson', 'Male', '1988-06-22', '1234567890', 'michael.johnson@example.com', '101 Elm St'),  
('Emily', 'Davis', 'Female', '1995-09-14', '9876543210', 'emily.davis@example.com', '202 Maple St'),  
('David', 'Wilson', 'Male', '1990-12-01', '5551234567', 'david.wilson@example.com', '303 Cedar St'),  
('Sophia', 'Taylor', 'Female', '1983-07-08', '7778889999', 'sophia.taylor@example.com', '404 Birch St'),  
('Ethan', 'Anderson', 'Male', '2001-04-17', '6667778888', 'ethan.anderson@example.com', '505 Walnut St'),  
('Olivia', 'Martinez', 'Female', '1987-02-19', '4445556666', 'olivia.martinez@example.com', '606 Spruce St'),  
('James', 'Garcia', 'Male', '1979-11-30', '3334445555', 'james.garcia@example.com', '707 Cherry St'),  
('Charlotte', 'Hernandez', 'Female', '1993-08-25', '2223334444', 'charlotte.hernandez@example.com', '808 Chestnut St'),  
('Liam', 'Clark', 'Male', '2005-05-05', '9998887777', 'liam.clark@example.com', '909 Aspen St'),  
('Amelia', 'Robinson', 'Female', '1975-09-18', '8887776666', 'amelia.robinson@example.com', '1010 Cypress St'),  
('William', 'Lee', 'Male', '1982-03-03', '7776665555', 'william.lee@example.com', '1111 Palm St'),  
('Mia', 'King', 'Female', '1999-12-21', '6665554444', 'mia.king@example.com', '1212 Magnolia St'),  
('Noah', 'Wright', 'Male', '2000-01-01', '5554443333', 'noah.wright@example.com', '1313 Willow St'),  
('Isabella', 'Lopez', 'Female', '1991-10-10', '4443332222', 'isabella.lopez@example.com', '1414 Redwood St'),  
('Benjamin', 'Hill', 'Male', '1998-07-07', '3332221111', 'benjamin.hill@example.com', '1515 Pinecone St');  


-- Insert Data For patients Table rooms
INSERT INTO rooms (room_number, room_type, availability)
VALUES
('101', 'General Ward', 1),  
('102', 'Private Room', 1),  
('103', 'Semi-Private Room', 1),  
('104', 'Maternity Ward', 0),  
('105', 'Pediatrics Ward', 1),  
('120', 'ICU', 1),  
('121', 'CCU', 0),  
('130', 'Emergency Room', 1);  


-- Insert Data For patients Table medications
INSERT INTO medications (medication_name, dosage)
VALUES
('Paracetamol', '500mg'),
('Aspirin', '100mg'),
('Amoxicillin', '250mg'),
('Ibuprofen', '400mg'),
('Ciprofloxacin', '500mg'),
('Metformin', '850mg'),
('Omeprazole', '20mg'),
('Losartan', '50mg'),
('Atorvastatin', '10mg'),
('Cetirizine', '10mg');




-- Insert Data For patients Table departments
INSERT INTO departments (department_name, location)
VALUES
('Cardiology', 'Building A'),  
('Neurology', 'Building B'),  
('Pediatrics', 'Building C'),  
('Orthopedics', 'Building D'),  
('Oncology', 'Building E'),  
('Emergency', 'Building F'),  
('Dermatology', 'Building G'),  
('Radiology', 'Building H'),  
('Maternity', 'Building I'),  
('Psychiatry', 'Building J');  



-- Insert Data For patients Table staff
INSERT INTO staff (first_name, last_name, job_title, phone_number, department_id)
VALUES
('Alice', 'White', 'Nurse', '1231231234', 1),  
('Bob', 'Black', 'Technician', '4564564567', 2),  
('Charlie', 'Green', 'Admin', '7897897890', 3),  
('Diana', 'Blue', 'Nurse', '1112223334', 1),  
('Edward', 'Brown', 'Surgeon', '2223334445', 4),  
('Fiona', 'Gray', 'Lab Technician', '3334445556', 5),  
('George', 'Silver', 'Receptionist', '4445556667', 6),  
('Hannah', 'Gold', 'Pharmacist', '5556667778', 7),  
('Isaac', 'Orange', 'IT Specialist', '6667778889', 8),  
('Julia', 'Purple', 'HR Manager', '7778889990', 9);  



-- Insert Data For patients Table doctors
INSERT INTO doctors (first_name, last_name, specialization, phone_number, email, department_id)
VALUES
('Dr. Mark', 'Taylor', 'Cardiologist', '1111111111', 'dr.mark@example.com', 1),  
('Dr. Susan', 'Johnson', 'Neurologist', '2222222222', 'dr.susan@example.com', 2),  
('Dr. Andrew', 'Lee', 'Pediatrician', '3333333333', 'dr.andrew@example.com', 3),  
('Dr. Emily', 'Brown', 'Oncologist', '4444444444', 'dr.emily@example.com', 3),  
('Dr. James', 'Wilson', 'Orthopedic Surgeon', '5555555555', 'dr.james@example.com', 4),  
('Dr. Olivia', 'Davis', 'Dermatologist', '6666666666', 'dr.olivia@example.com', 1),  
('Dr. Liam', 'Martinez', 'Radiologist', '7777777777', 'dr.liam@example.com', 7),  
('Dr. Sophia', 'Garcia', 'Psychiatrist', '8888888888', 'dr.sophia@example.com', 3),  
('Dr. Noah', 'Anderson', 'Anesthesiologist', '9999999999', 'dr.noah@example.com', 9),  
('Dr. Isabella', 'Thomas', 'General Practitioner', '1010101010', 'dr.isabella@example.com', 3);  


-- Insert Data For patients Table oppointments
INSERT INTO oppointments (oppointment_date, oppointment_time, doctor_id, patient_id, reason)
VALUES
('2024-12-10', '10:00:00', 1, 1, 'Routine check-up'),
('2024-12-11', '11:00:00', 2, 2, 'Follow-up'),
('2024-12-20', '15:30:00', 3, 3, 'Consultation'),
('2024-12-12', '09:00:00', 4, 4, 'General check-up'),
('2024-12-13', '14:30:00', 5, 5, 'Blood test results'),
('2024-12-14', '16:00:00', 2, 6, 'Dermatology consultation'),
('2024-12-15', '13:00:00', 7, 7, 'Physical therapy'),
('2024-12-16', '10:30:00', 8, 8, 'Emergency consultation'),
('2024-12-17', '11:15:00', 9, 9, 'Follow-up consultation'),
('2024-12-18', '12:45:00', 7, 4, 'Vaccination'),
('2024-12-19', '14:00:00', 9, 1, 'Routine check-up'),
('2024-12-21', '15:00:00', 8, 2, 'Neurology consultation'),
('2024-12-22', '17:00:00', 5, 3, 'Post-surgery follow-up');

-- Insert Data For patients Table admissions
INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES
(1, 2, '2024-12-01', '2024-12-10'),
(2, 3, '2024-12-05', NULL),
(3, 1, '2024-12-08', '2024-12-12'),
(4, 2, '2024-12-03', '2024-12-07'),
(5, 4, '2024-12-06', '2024-12-15'),
(6, 3, '2024-12-07', NULL),
(7, 5, '2024-12-09', '2024-12-14'),
(8, 6, '2024-12-10', '2024-12-13'),
(9, 2, '2024-12-11', '2024-12-20'),
(6, 1, '2024-12-12', '2024-12-18'),
(2, 4, '2024-12-13', '2024-12-22'),
(5, 5, '2024-12-14', NULL),
(8, 6, '2024-12-15', '2024-12-19'),
(8, 1, '2024-12-16', '2024-12-23'),
(7, 3, '2024-12-17', NULL);


-- Insert Data For patients Table prescriptions
INSERT INTO prescriptions (patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES
(1, 1, 1, '2024-12-01', 'Take one tablet daily'),
(2, 2, 2, '2024-12-02', 'Take two tablets after meals'),
(1, 1, 1, '2024-12-01', 'Take one tablet daily'),
(2, 2, 2, '2024-12-02', 'Take two tablets after meals'),
(3, 3, 3, '2024-12-03', 'Take one tablet every 6 hours'),
(4, 1, 4, '2024-12-04', 'Take one tablet before bed'),
(5, 2, 5, '2024-12-05', 'Take one tablet with food twice daily'),
(6, 3, 6, '2024-12-06', 'Take one tablet every morning'),
(7, 1, 7, '2024-12-07', 'Take two tablets daily'),
(8, 2, 8, '2024-12-08', 'Take one tablet at bedtime'),
(9, 3, 9, '2024-12-09', 'Take one tablet every 4 hours if needed'),
(9, 1, 8, '2024-12-10', 'Take one tablet with meals for 7 days'),
(7, 2, 5, '2024-12-11', 'Take one tablet daily with plenty of water'),
(8, 3, 6, '2024-12-12', 'Take one tablet before meals'),
(5, 1, 4, '2024-12-13', 'Take two tablets daily with food'),
(3, 2, 9, '2024-12-14', 'Take one tablet every 8 hours as needed'),
(4, 3, 4, '2024-12-15', 'Take one tablet every 12 hours for 5 days');

