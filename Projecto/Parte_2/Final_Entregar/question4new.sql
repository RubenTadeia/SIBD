/* USE ist175682 
USE ist179297 */

USE ist175268;

/* Pergunta 4

4. Write a function that, given two series A and B, returns true if any region of the
elements of A overlaps with any region of the elements of B, and false otherwise.

 */

delimiter $$

create function newdettectIntersection(series_id_A integer, series_id_B integer)
returns varchar(5)
begin

select * from region  where series_id = series_id_A OR series_id = series_id_B;


end$$
delimiter ;
