
USE projectoGrupo15;


/* Pergunta 2 

2. Write a query to retrieve the name of the doctor that performed more studies
containing as “X-ray” in the description, and that were performed in the last 7 seven
days with an equipment from manufacturer “Philips”.

*/

select doctor.name from doctor natural join study as s where s.description = 'X-ray' AND s.manufacturer = 'Philips' 
AND (datediff(s.date, current_date) <= 7 OR datediff(s.date, current_date) >= -7) group by doctor.name
having count(request_number) >= all (select count(request_number) from study group by doctor_id);

/********************************** 
Duvida -> O médico pode ser Technical e Clinical specialist ?
*/












/* Pergunta 3

3. Write a trigger to prevent the same doctor from performing any study that he/she
requested. Additionally, the date of a study must be posterior to the date of the
appointment that requested the study.

 */

delimiter $$

CREATE TRIGGER trgAfterInsert BEFORE INSERT ON study
FOR INSERT
AS
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal(10,2);
	declare @audit_action varchar(100);

	select @empid=i.Emp_ID from inserted i;	
	select @empname=i.Emp_Name from inserted i;	
	select @empsal=i.Emp_Sal from inserted i;	
	set @audit_action='Inserted Record -- After Insert Trigger.';

	insert into Employee_Test_Audit
           (Emp_ID,Emp_Name,Emp_Sal,Audit_Action,Audit_Timestamp) 
	values(@empid,@empname,@empsal,@audit_action,getdate());

	PRINT 'AFTER INSERT trigger fired.'
GO$$

delimiter ;









/* Pergunta 4

4. Write a function that, given two series A and B, returns true if any region of the
elements of A overlaps with any region of the elements of B, and false otherwise.

 */



/* Made brute force way... i guess */

delimiter $$

create function dettectIntersection(series_id_A integer, series_id_B integer)
returns varchar(5)
begin
declare intersection varchar(5);

/* inicialization of the variables for point 1 */
declare x1_p1 numeric(4,3);
declare x2_p1 decimal(4,3);
declare y1_p1 decimal(4,3);
declare y2_p1 decimal(4,3);

declare x1_p2 decimal(4,3);
declare x2_p2 decimal(4,3);
declare y1_p2 decimal(4,3);
declare y2_p2 decimal(4,3);

SET x1_p1 = (select x1 from region where series_id = series_id_A);
SET x2_p1 = (select x2 from region where series_id = series_id_A);
SET y1_p1 = (select y1 from region where series_id = series_id_A);
SET y2_p1 = (select y2 from region where series_id = series_id_A);

/* inicialization of the variables for point 2*/


SET intersection = 'False';

SET x1_p2 = (select x1 from region where series_id = series_id_B);
SET x2_p2 = (select x2 from region where series_id = series_id_B);
SET y1_p2 = (select y1 from region where series_id = series_id_B);
SET y2_p2 = (select y2 from region where series_id = series_id_B);

if ( ((x1_p1 >= LEAST(x1_p2, x2_p2) AND x1_p1 <= GREATEST(x1_p2, x2_p2))
	OR
	(x2_p1 >= LEAST(x1_p2, x2_p2) AND x2_p1 <= GREATEST(x1_p2, x2_p2)))
	AND
	((y1_p1 >= LEAST(y1_p2, y2_p2) AND y1_p1 <= GREATEST(y1_p2, y2_p2))
	OR
	(y2_p1 >= LEAST(y1_p2, y2_p2) AND y2_p1 <= GREATEST(y1_p2, y2_p2)))
)
THEN SET intersection = 'True';


/* Falta um caso em que o quadrado 2 esta dentro do quadrado 1*/
elseif ( ((x1_p2 >= LEAST(x1_p1, x2_p1) AND x1_p2 <= GREATEST(x1_p1, x2_p1))
	OR
	(x2_p2 >= LEAST(x1_p1, x2_p1) AND x2_p2 <= GREATEST(x1_p1, x2_p1)))
	AND
	((y1_p2 >= LEAST(y1_p1, y2_p1) AND y1_p2 <= GREATEST(y1_p1, y2_p1))
	OR
	(y2_p2 >= LEAST(y1_p1, y2_p1) AND y2_p2 <= GREATEST(y1_p1, y2_p1)))
)
THEN SET intersection = 'True';
end if;

return intersection;
end$$
delimiter ;



/************************************

declare x1_p1 decimal(4 , 3);
declare x2_p1 decimal(4 , 3);
declare y1_p1 decimal(4 , 3);
declare y2_p1 decimal(4 , 3);

select x1 into @x1_p1 from region where series_id = series_id_A;
select x2 into @x2_p1 from region where series_id = series_id_A;
select y1 into @y1_p1 from region where series_id = series_id_A;
select y2 into @y2_p1 from region where series_id = series_id_A;



declare x1_p2 decimal(4,3);
declare x2_p2 decimal(4,3);
declare y1_p2 decimal(4,3);
declare y2_p2 decimal(4,3);


select x1 into @x1_p2 from region where series_id = series_id_B;
select x2 into @x2_p2 from region where series_id = series_id_B;
select y1 into @y1_p2 from region where series_id = series_id_B;
select y2 into @y2_p2 from region where series_id = series_id_B;



************************************/


/* Para chamar a função

select dettectIntersection(1, 2);

select function_name ( input variavel) 
*/