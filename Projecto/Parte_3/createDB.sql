/* USE ist175682 
USE ist179297*/

USE ist175268;

drop table if exists appointment;
drop table if exists patient;
drop table if exists doctor;

create table IF NOT EXISTS patient(
	patient_id  integer NOT NULL AUTO_INCREMENT,
    name  varchar(50) NOT NULL,
    birthday  date NOT NULL,
    address  varchar(255) NOT NULL,
    primary key(patient_id)
    );


create table IF NOT EXISTS doctor(
	doctor_id  integer NOT NULL AUTO_INCREMENT,
    name  varchar(50) NOT NULL,
    specialty  varchar(20) NOT NULL,
    primary key(doctor_id)
    );


create table IF NOT EXISTS appointment(
	patient_id  integer NOT NULL,
   	doctor_id  integer NOT NULL,
    date  date NOT NULL,
    office  varchar(100) NOT NULL,
    primary key(patient_id, doctor_id, date),
    foreign key(patient_id) references patient(patient_id),
    foreign key(doctor_id) references doctor(doctor_id)
    );