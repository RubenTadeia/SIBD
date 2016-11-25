/* USE ist175682 
USE ist179297*/

USE ist175268;

/* Task 3 query

If	the	patient	does	not	exist	in	the	database,	it	is	necessary	to	register	it	first.	Create	a	
set	of	Web	pages	where	both	operations	(the	registration	of	the	new	patient	and	the	
scheduling	of	the	appointment)	are	performed	in	a	single	transaction.	If	the	scheduling	
of	the	appointment	fails,	then	the	registration	of	the	patient	should	be	cancelled.	The	
scheduling	of	the	appointment	will	fail	if	the	specified	date	falls	on	a	weekend.

Corrijam se estiver errado
*/


/* 
	Criar variável em php  em vez de ter doctor_id
	em vez de Raul ter o nome do médico com que se quer marcar um appointment;
*/
SET @doctor_id = (select doctor_id from doctor where name = 'Raul');

/*select @doctor_id; *//* debug */


/* 
	Substituir Raul Solnado pela variável com o nome da pessoa, que entra como caixa de texto
*/
SET @patient_name = 'Raul Solnado';

/*select @patient_name; *//* debug */


/* 
	Substituir John pela variável com o nome da pessoa, que entra como caixa de texto
*/
SET @birthday = '1994-07-14';

/*select @birthday; *//* debug */

/* 
	Substituir John pela variável com o nome da pessoa, que entra como caixa de texto
*/
SET @address = 'Rua dos Jovens Artistas';

/*select @address; *//* debug */


/* 
	A data é dada como input de uma combo box, em vez de ser hardcoded
*/

SET @appdata = '2016-11-21';

/*select @appdata; *//* debug */


/* 
	O office é inserido por texto, através de uma caixa de texto e entra como variável
*/

SET @office = 'Escritório nas Bahamas';

/*select @office; /* debug */


/* 
	Existem 3 opções:
		- Inserir (Marcar)
		- Update (Alterar a data)
		- Delete (Desmarcar)
*/

/* Inserir
insert into appointment values (@patient_id, @doctor_id, @appdata, @office);
*/

SET @newdate = '2016-11-25';

/*select @newdate; */ /* debug */


/*
Transaction propriamente dita
*/

delimiter $$

start transaction;

insert into patient (name, birthday, address) values (@patient_name, @birthday, @address);

/* 
	Criar variável em php  em vez de ter patient_id
	em vez de Francesca ter o nome do paciente com que se quer marcar um appointment;
*/
SET @patient_id = (select patient_id from patient order by patient_id desc limit 1);

/*select @patient_id; *//* debug */

/* esta query é só de SQLnão vai funcionar em php */ if (weekday(@newdate) >= 0 AND weekday(@newdate) <= 4)
THEN insert into appointment values (@patient_id, @doctor_id, @appdata, @office);

else
rollback;

end if;

commit;$$
delimiter ;

/* ESTE SCRIPT NÃO CORRE mas em PHP vai funcionar */