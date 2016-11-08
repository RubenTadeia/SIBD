/* USE ist175682 
USE ist179297 */
USE ist175268;

/* Pergunta 3

3. Write a trigger to prevent the same doctor from performing any study that he/she
requested. Additionally, the date of a study must be posterior to the date of the
appointment that requested the study.

 */

delimiter $$

create trigger protect_study before insert on study
for each row

begin
/* declaration of variables */
declare studyRN integer;
declare requestRN integer;
declare studyDI integer;
declare requestDI integer;
declare daysDifference integer;


declare appointmentDT date;
declare studyDT date;


SET studyRN = new.request_number;
SET studyDI = new.doctor_id;

SET requestDI = (select request.doctor_id from request where request.request_number = studyRN);

SET studyDT = new.date;

/* Assumindo que o appointment tem a mesma data que o resquest */
SET appointmentDT = (select distinct appointment.date from appointment, request , study where appointment.date = request.date 
	AND request.request_number = studyRN);

SET daysDifference = (select DATEDIFF(studyDT , appointmentDT));

if ( studyDI = requestDI)
then
/* Versão 5.7 do SQL
signal sqlstate '45000' set message_text = 'The same doctor cannot perform any study that he/she requested!';*/

call The_same_doctor_cannot_perform_any_study_he_or_she_requested();
elseif ( daysDifference <= 0 ) 
then
/* Versão 5.7 do SQL
signal sqlstate '45000' set message_text = 'The date of a study must be posterior to the date of the appointment that requested the study!';*/

call The_date_of_a_study_must_be_posterior_to_the_date_of_the_appointment_that_requeted_the_study();
end if;
end$$

delimiter ;
