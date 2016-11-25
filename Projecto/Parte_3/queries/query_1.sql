/* USE ist175682 
USE ist179297*/

USE ist175268;


/* Task 1 query

A	 patient	 calls	 the	 healthcare	 center	 in	 order	 to	 schedule	 an	 appointment.	 The	 first	
task	is	to	check	if	the	patient	already	exists	in	the	database.	Create	a	set	of	Web	pages	
to	search	for	patients	by	name.	On	displayed	results,	include	the	possibility	of	jumping	
directly	to	either	Task	2	or	Task	3,	depending	on	whether	the	patient	is	registered	or	
not.	

Corrijam se estiver errado
*/


/* 
	Substituir John pela variável com o nome da pessoa, que entra como caixa de texto
*/
SET @patient_name = 'John';

/*select @patient_name; */ /* debug */

select name, birthday, address from patient where name = @patient_name;