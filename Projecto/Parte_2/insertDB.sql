/* Para testar */

USE projectoGrupo15;	

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
insert into patient (name, birthday, address) values ('Matilde',  '2018-12-31' ,'Madeira');

/* doctor */
insert into doctor values (1, 'António', 'Clinical specialist');
insert into doctor values (2,'Joana', 'Clinical specialist');
insert into doctor values (3, 'Maria', 'Technical specialist');
insert into doctor values (4, 'Raul', 'Technical specialist');
insert into doctor values (5, 'Fábio', 'Technical specialist');

/* appointment */
insert into appointment values (4, 1, '2016-11-01', 'Escritorio 4');
insert into appointment values (5, 2,'2016-11-01', 'Foi numa tasca');
insert into appointment values (5, 3, '2016-11-02',  'Nao me lembro, tive um acidente nesse dia');
insert into appointment values (7, 3, '2016-11-02', 'Escritorio na Australia');
insert into appointment values (6, 4, '2016-11-01',  'Escritorio de Las Vegas');
insert into appointment values (2, 3, '2016-11-03',  'Polinesia Francesa');


/* request */
insert into request values (1 , 4, 1, '2016-11-01');
insert into request values (2 , 5, 2, '2016-11-01');
insert into request values (3 , 6, 4, '2016-11-01');
insert into request values (4 , 5, 3, '2016-11-02');
insert into request values (5 , 7, 3, '2016-11-02');
insert into request values (6 , 2, 3, '2016-11-03');

/* equipment */
insert into equipment values ( 'Philips', '1118-1590-5341-6933-7029-3016' , 'Model 5');
insert into equipment values ( 'Philips', '8MEH-RVNUH-PDU6U-E3VSR-VBTV3-VEMBR-ACED' , 'Model 4' );
insert into equipment values ( 'Philips', 'AXBN-VB3R-79H5-5MHD' , 'Model 3');
insert into equipment values ( 'Roger', 'YM38-Q84W-75CA-YYQD' , 'Unique Model' );
insert into equipment values ( 'Droid' , '2EC72-368A4-5E4E9-D54A1' , 'Best Model' );
insert into equipment values ( 'Philips', 'FR4S-8542-UYQW-USH9' , 'Last Model');


/* study */
insert into study values ( 1, 'Electrocardiograma', '2016-11-01' , 1 , 'Philips', '1118-1590-5341-6933-7029-3016');
insert into study values ( 2, 'X-ray', '2016-11-01' , 2, 'Philips', '8MEH-RVNUH-PDU6U-E3VSR-VBTV3-VEMBR-ACED');
insert into study values ( 3, 'X-ray' , '2016-11-02', 3, 'Philips', 'AXBN-VB3R-79H5-5MHD');
insert into study values ( 4, 'Electrocardiograma', '2016-11-01', 4 , 'Roger', 'YM38-Q84W-75CA-YYQD');
insert into study values ( 5, 'X-ray' , '2016-11-01', 5 , 'Droid' , '2EC72-368A4-5E4E9-D54A1');
insert into study values ( 6, 'X-ray' , '2016-11-03', 3, 'Philips', 'FR4S-8542-UYQW-USH9');

/* series */
insert into series values (1, 'Series A' , '/home/ruben/Documenti/' , 1 , 'Electrocardiograma');
insert into series values (2, 'Series B' , '/home/ruben/Modelli/' , 2 , 'X-ray');
insert into series values (3, 'Series C' , '/home/ruben/Scaricati/' , 3 , 'X-ray');
insert into series values (4, 'Series D' , '/home/ruben/Musica/' , 4 , 'Electrocardiograma');
insert into series values (5, 'Series E' , '/home/ruben/Immagini/' , 5 , 'X-ray');
insert into series values (6, 'Series F' , '/home/ruben/Scrivania/' , 3 , 'X-ray');

/* element */
insert into element values (1, 1);
insert into element values (2, 2);
insert into element values (3, 3);
insert into element values (4, 4);
insert into element values (5, 5);
insert into element values (6, 6);

/* region */
insert into region values (1, 1 , 0 , 0 , 0.2 , 0.2);
insert into region values (2, 2 , 0.2 , 0.2 ,  0.4 , 0.4);
insert into region values (3, 3 , 0.5, 0.5 , 0.9, 0.9);
insert into region values (4, 4 , 0.4 , 0.4 , 0.5 , 0.5);
insert into region values (5, 5 , 0.425 ,0.425 , 0.495 , 0.495);

