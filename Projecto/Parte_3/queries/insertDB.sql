/* USE ist175682 
USE ist179297 */

USE ist175268;

/* Limpeza das tabelas */
SET FOREIGN_KEY_CHECKS = 0; /* Disable foreign key checking.*/
TRUNCATE TABLE patient;
TRUNCATE TABLE doctor;
TRUNCATE TABLE appointment;
SET FOREIGN_KEY_CHECKS = 1; /* Enable foreign key checking.*/

/* patient */
insert into patient values (5, 'John', '1994-04-14', 'Rua das Lagartixas, segunda osga à direita');
insert into patient values (6, 'Carlos', '1990-12-25' ,'Sem abrigo');
insert into patient values (2, 'Carla Marreiros',  '1999-02-28' ,'Montijo');
insert into patient values (7, 'Emma',  '2004-05-17' ,'Samora Correia');
insert into patient values (4, 'Roberta Leal',  '1900-03-20' ,'Casa dos Soldados');
insert into patient values (3, 'Francesca',  '1993-05-12' ,'Italia');
insert into patient values (1, 'Joaquim',  '2000-07-18' ,'Portugal');
insert into patient (name, birthday, address) values ('Matilde',  '2018-12-31' ,'Madeira');
insert into patient values (9, 'Roberta Francisca',  '1900-03-20' ,'Casa dos Soldados');
insert into patient values (10, 'Carla Diferente',  '1993-05-12' ,'Italia');
insert into patient values (11, 'Carla Rodrigues',  '2000-07-18' ,'Portugal');

/* doctor */
insert into doctor values (1, 'António', 'Dermatologista');
insert into doctor values (2,'Joana', 'Cardiologista');
insert into doctor values (3, 'Maria', 'Alergia e Imunologia');
insert into doctor values (4, 'Raul', 'Medicina interna');
insert into doctor values (5, 'Fábio', 'Endoscopia');