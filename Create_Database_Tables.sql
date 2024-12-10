-- Drop The Table If Its Already Exist 
DROP DATABASE IF EXISTS hospitalmanagement;

-- Create Database hospitalmanagement
CREATE database hospitalmanagement;

-- Use The Database
use hospitalmanagement;


-- Create tables With Correct Attributes
create table patients (
	patient_id int(11) primary key AUTO_INCREMENT,
    first_name varchar(50),
    last_name varchar(50),
    gender enum('Male','Female'),
    date_of_birth date,
    phone_number varchar(15),
    email varchar(100),
    address varchar(255)
);

create table rooms (
	room_id int(11) primary key AUTO_INCREMENT,
    room_number varchar(10),
    room_type enum("General","Private","ICU"),
    availability tinyint(1)
);

create table medications (
	medication_id int(11) primary key AUTO_INCREMENT,
    medication_name varchar(100),
    dosage varchar(50)
);


create table departments (
	department_id int(11) primary key AUTO_INCREMENT,
    department_name varchar(50),
    location varchar(100)
);

create table staff (
	staff_id int(11) primary key AUTO_INCREMENT,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50) ,
    job_title VARCHAR(50) ,
    phone_number VARCHAR(15) ,
    department_id int(11)
);


create table doctors (
	doctor_id int(11) primary key AUTO_INCREMENT,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50) ,
    specialization VARCHAR(50) ,
    phone_number VARCHAR(15) ,
    email int(11),
    department_id int(11)
);


create table oppointments (
	oppointment_id int(11) primary key AUTO_INCREMENT,
    oppointment_date date,
    oppointment_time time ,
    doctor_id int(11) ,
    patient_id int(11) ,
    reason VARCHAR(255)
);


create table admissions (
	admission_id int(11) primary key AUTO_INCREMENT,
    patient_id int(11),
    room_id int(11),
    admission_date date,
    discharge_date date
);



create table prescriptions (
	prescription_id int(11) primary key AUTO_INCREMENT,
    patient_id int(11),
    doctor_id int(11),
    medication_id int(11),
    prescription_date date,
    dosage_instructions VARCHAR(255)
);


-- Create Foreign Key For Every Id Column For Relation beetween Tables
alter table prescriptions 
add constraint FK_patient_id_presc 
FOREIGN KEY(patient_id) 
REFERENCES patients(patient_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table prescriptions
add constraint FK_doctor_id_presc 
FOREIGN KEY(doctor_id) 
REFERENCES doctors(doctor_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table prescriptions 
add constraint FK_medication_id_presc 
FOREIGN KEY(medication_id) 
REFERENCES medications(medication_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table admissions 
add constraint FK_patient_id_Admission 
FOREIGN KEY (patient_id) 
REFERENCES patients(patient_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table admissions 
add constraint FK_room_id_Admission 
FOREIGN KEY (room_id) 
REFERENCES rooms(room_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table oppointments 
add constraint FK_doctor_id_oppointments 
Foreign Key (doctor_id) 
REFERENCES doctors(doctor_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table oppointments 
add constraint FK_patient_id_oppointments 
Foreign Key (patient_id) 
REFERENCES patients(patient_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

Alter table staff 
add constraint FK_department_id_staff 
FOREIGN key (department_id) 
references departments(department_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

alter table doctors 
add constraint FK_department_id_Doctors
FOREIGN key (department_id) 
REFERENCES departments(department_id)
ON UPDATE CASCADE 
ON DELETE CASCADE ;

