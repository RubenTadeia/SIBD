/* USE ist175682 
USE ist179297*/

USE ist175268;


/* Task 2 query

Create	a	set	of	Web	pages	to	schedule	an	appointment	of	an	existing	patient	with	an	
existing	doctor,	on	a	certain	date	and	office.	

Corrijam se estiver errado
*/


/* 
	Criar variável em php  em vez de ter doctor_id
	em vez de Raul ter o nome do médico com que se quer marcar um appointment;
*/
SET @doctor_id = (select doctor_id from doctor where name = 'Raul');

/*select @doctor_id; *//* debug */


/* 
	Criar variável em php  em vez de ter patient_id
	em vez de Francesca ter o nome do paciente com que se quer marcar um appointment;
*/
SET @patient_id = (select patient_id from patient where name = 'Francesca');

/*select @patient_id; *//* debug */


/* 
	A data é dada como input de uma combo box, em vez de ser hardcoded
*/

SET @appdata = '2016-11-21';

/*select @appdata; */ /* debug */


/* 
	O office é inserido por texto, através de uma caixa de texto e entra como variável
*/

SET @office = 'Escritório nas Bahamas';

/*select @office; *//* debug */


/* 
	Existem 3 opções:
		- Inserir (Marcar)
		- Update (Alterar a data)
		- Delete (Desmarcar)
*/

/* Inserir*/
insert into appointment values (@patient_id, @doctor_id, @appdata, @office);


SET @newdate = '2016-11-22';

/*select @newdate; *//* debug */

/* Update 
update appointment set date = @newdate where patient_id = @patient_id and doctor_id = @doctor_id and date = @appdata;
*/

/* Delete 
delete from appointment where patient_id = @patient_id and date = @appdata and doctor_id = @doctor_id limit 1;
*/

select * from appointment;

	/* 
		Problema que me parece que isto vá ter "assim à primeira vista" :
			- Testar entrar várias vezes no mesmo (link/ficheiro.php), porque temo que as variáveis
			declaradas várias vezes, que não fucionem
	*/