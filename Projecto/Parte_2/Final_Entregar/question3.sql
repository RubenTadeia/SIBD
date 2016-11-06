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

declare appointmentDT date;
declare studyDT date;


SET studyRN = (select study.request_number from study);
SET requestRN = (select request.request_number from request);
SET studyDI = (select study.doctor_id from study);
SET requestDI = (select request.doctor_id from request;

SET appointmentDT = (select appointment.date from appointment as date);
SET studyDT = cast(select study.date from study as date);


if ( ( studyRN = requestRN ) AND ( studyDI = requestDI)) 
then
signal sqlstate '45000' set message_txt 'The same doctor cannot perform any study that he/she requested';


if ( (appointmentDT - studyDT ) != 0 ) 
then
signal sqlstate '45000' set message_txt 'The date of a study must be posterior to the date of the
appointment that requested the study';
end if;


end$$

delimiter ;
