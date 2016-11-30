/* USE ist175682 
USE ist179297*/

USE ist175268;

SET FOREIGN_KEY_CHECKS = 0; /* Disable foreign key checking.*/
drop table if exists patient;
drop table if exists doctor;
drop table if exists appointment;
drop table if exists request;
drop table if exists equipment;
drop table if exists study;
drop table if exists series;
drop table if exists element;
drop table if exists region;
SET FOREIGN_KEY_CHECKS = 1; /* Enable foreign key checking.*/

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


create table IF NOT EXISTS request(
	request_number  integer NOT NULL AUTO_INCREMENT,
    patient_id  integer NOT NULL ,
   	doctor_id  integer NOT NULL,
    date  date NOT NULL,
    primary key(request_number),
    UNIQUE KEY request_number (request_number),
    foreign key(patient_id , doctor_id , date) references appointment(patient_id , doctor_id , date)
    );


create table IF NOT EXISTS equipment(
	manufacturer  varchar(50) NOT NULL,
    serial_number  varchar(50) NOT NULL,
   	model  varchar(50) NOT NULL,
    primary key(manufacturer, serial_number)
    );


create table IF NOT EXISTS study(
	request_number  integer NOT NULL,
    description  varchar(255) NOT NULL,
   	date  date NOT NULL,
   	doctor_id  integer NOT NULL,
   	manufacturer  varchar(50) NOT NULL,
   	serial_number  varchar(50) NOT NULL,
    primary key(request_number, description),
    foreign key(request_number) references request(request_number),
    foreign key(doctor_id) references doctor(doctor_id),
    foreign key(manufacturer , serial_number) references equipment(manufacturer , serial_number)
    );


create table IF NOT EXISTS series(
	series_id  integer NOT NULL,
    name  varchar(100) NOT NULL,
   	base_url  varchar(255) NOT NULL,
   	request_number  integer NOT NULL,
   	description  varchar(255) NOT NULL,
    primary key(series_id),
    UNIQUE KEY series_id (series_id),
    foreign key(request_number , description) references study(request_number , description)
    );


create table IF NOT EXISTS element(
	series_id  integer NOT NULL,
    elem_index  integer NOT NULL,
    primary key(series_id, elem_index),
    foreign key(series_id) references series(series_id)
    );


create table IF NOT EXISTS region(
	series_id  integer NOT NULL,
    elem_index  integer NOT NULL,
    x1  decimal(4,3) NOT NULL,
    y1  decimal(4,3) NOT NULL,
    x2  decimal(4,3) NOT NULL,
    y2  decimal(4,3) NOT NULL,
    primary key(series_id, elem_index, x1, y1 ,x2 , y2),
    foreign key(series_id , elem_index) references element(series_id , elem_index)
    );
