/* Para testar */

/* USE ist175682 
USE ist179297 */

USE ist175268;

/* Limpeza das tabelas */

SET FOREIGN_KEY_CHECKS = 0; /* Disable foreign key checking.*/
TRUNCATE TABLE region;
TRUNCATE TABLE element;
TRUNCATE TABLE series;
TRUNCATE TABLE study;
TRUNCATE TABLE equipment;
TRUNCATE TABLE request;
TRUNCATE TABLE appointment;
TRUNCATE TABLE patient;
TRUNCATE TABLE doctor;
SET FOREIGN_KEY_CHECKS = 1; /* Enable foreign key checking. */


/* patient */
insert into patient values (5, 'John', '1994-04-14', 'Rua das Lagartixas, segunda osga à direita');
insert into patient values (6, 'Carlos', '1990-12-25' ,'Sem abrigo okay?');
insert into patient values (2, 'Carla',  '1999-02-28' ,'@@@ Rebentar com o sistema %&/()');
insert into patient values (7, 'Emma',  '2004-05-17' ,'Tipica casa em Samora Correia');
insert into patient values (4, 'Roberta',  '1900-03-20' ,'Casa');
insert into patient values (3, 'Francesca',  '1993-05-12' ,'Italia');
insert into patient values (1, 'Joaquim',  '2000-07-18' ,'Portugal');
insert into patient (name, birthday, address) values ('Matilde',  '2018-12-31' ,'Madeira');

/* doctor */
insert into doctor values (1, 'António', 'Clinical specialist');
insert into doctor values (2,'Joana', 'Clinical specialist');
insert into doctor values (3, 'Maria', 'Technical specialist');
insert into doctor values (4, 'Raul', 'Technical specialist');
insert into doctor values (5, 'Fábio', 'Technical specialist');

/* appointment */
insert into appointment values (4, 1, '2016-11-01', 'Escritorio 4');
insert into appointment values (5, 2, '2016-11-01', 'Foi numa tasca');
insert into appointment values (5, 3, '2016-11-02',  'Nao me lembro, tive um acidente nesse dia');
insert into appointment values (7, 3, '2016-11-02', 'Escritorio na Australia');
insert into appointment values (6, 4, '2016-11-01',  'Escritorio de Las Vegas');
insert into appointment values (2, 3, '2016-11-03',  'Polinesia Francesa');
insert into appointment values (1, 4, '2016-11-04',  'Polinesia Francesa');

/* request */
insert into request values (1 , 4, 1, '2016-11-01');
insert into request values (2 , 5, 2, '2016-11-01');
insert into request values (3 , 6, 4, '2016-11-01');
insert into request values (4 , 5, 3, '2016-11-02');
insert into request values (5 , 7, 3, '2016-11-02');
insert into request values (6 , 2, 3, '2016-11-03');
insert into request values (7 , 1, 4, '2016-11-04');

/* equipment */
insert into equipment values ( 'Philips', '1118-1590-5341-6933-7029-3016' , 'Model 5');
insert into equipment values ( 'Philips', '8MEH-RVNUH-PDU6U-E3VSR-VBTV3-VEMBR-ACED' , 'Model 4' );
insert into equipment values ( 'Philips', 'AXBN-VB3R-79H5-5MHD' , 'Model 3');
insert into equipment values ( 'Roger', 'YM38-Q84W-75CA-YYQD' , 'Unique Model' );
insert into equipment values ( 'Droid' , '2EC72-368A4-5E4E9-D54A1' , 'Best Model' );
insert into equipment values ( 'Philips', 'FR4S-8542-UYQW-USH9' , 'Last Model');
insert into equipment values ( 'R2D2', 'Ahah-hehe-ihih-hoho-uhuh' , 'Space Unit');


/* study */
insert into study values ( 1, 'Electrocardiograma', '2016-11-07' , 2 , 'Philips', '1118-1590-5341-6933-7029-3016');
insert into study values ( 2, 'X-ray', '2016-11-07' , 1, 'Philips', '8MEH-RVNUH-PDU6U-E3VSR-VBTV3-VEMBR-ACED');
insert into study values ( 3, 'X-ray' , '2016-11-09', 3, 'Philips', 'AXBN-VB3R-79H5-5MHD');
insert into study values ( 4, 'Electrocardiograma', '2016-11-09', 4 , 'Roger', 'YM38-Q84W-75CA-YYQD');
insert into study values ( 5, 'X-ray' , '2016-11-09', 5 , 'Droid' , '2EC72-368A4-5E4E9-D54A1');
insert into study values ( 6, 'X-ray' , '2016-11-10', 2, 'Philips', 'FR4S-8542-UYQW-USH9');
insert into study values ( 7, 'X-ray' , '2016-11-11', 3, 'Philips', 'FR4S-8542-UYQW-USH9');

/* series */

insert into series values (1, 'Series A' , '/home/ruben/Documents/' , 1 , 'Electrocardiograma');
insert into series values (2, 'Series B' , '/home/ruben/Models/' , 2 , 'X-ray');
insert into series values (3, 'Series C' , '/home/ruben/Downloads/' , 3 , 'X-ray');
insert into series values (4, 'Series D' , '/home/ruben/Music/' , 4 , 'Electrocardiograma');
insert into series values (5, 'Series E' , '/home/ruben/Pictures/' , 5 , 'X-ray');
insert into series values (6, 'Series F' , '/home/ruben/Desktop/' , 6 , 'X-ray');
insert into series values (7, 'Series G' , '/home/ruben/IST' , 7 , 'X-ray');


/* element */

insert into element values (1, 1);
insert into element values (1, 2);
insert into element values (1, 3);
insert into element values (2, 1);
insert into element values (2, 2);
insert into element values (3, 3);
insert into element values (4, 4);
insert into element values (5, 5);
insert into element values (6, 6);
insert into element values (7, 7);

/* region */

insert into region values (1, 1 , 0 , 0 , 0.2 , 0.2);
insert into region values (2, 2 , 0.25 , 0.25 ,  0.4 , 0.4);
insert into region values (3, 3 , 0.5, 0.5 , 0.9, 0.9);
insert into region values (4, 4 , 0.4 , 0.4 , 0.5 , 0.5);
insert into region values (5, 5 , 0.425 ,0.425 , 0.495 , 0.495);


/* Teste da função*/

insert into region values (1, 1 , 0.150 , 0.155 ,  0.160 , 0.165);
insert into region values (1, 2 , 0.200 , 0.200 ,  0.249 , 0.249);
insert into region values (1, 3 , 0.350 , 0.350 ,  0.399 , 0.399);
insert into region values (2, 1 , 0.300 , 0.300 ,  0.500 , 0.500);

/* Estes são as 2 queries que usei para testar o meu trigger :) */


/* Rebentar no primeiro trigger */

insert into appointment values (8, 1, '2016-11-06',  'Explosion in trigger part 1');
insert into request values (8 , 8, 1, '2016-11-06');

insert into study values ( 8, 'X-ray' , '2016-11-06', 1 , 'R2D2' , 'Ahah-hehe-ihih-hoho-uhuh');
/*Resposta : ERROR 1644 (45000): The same doctor cannot perform any study that he/she requested! */


/* Rebentar no segundo trigger */

insert into appointment values (8, 1, '2016-11-05',  'Explosion in trigger part 2');
insert into request values (9 , 8, 1, '2016-11-05');

insert into study values ( 9 , 'X-ray' , '2016-10-31', 2, 'R2D2', 'Ahah-hehe-ihih-hoho-uhuh');
/*Resposta : ERROR 1644 (45000): The date of a study must be posterior to the date of the appointment that requested the study! */
