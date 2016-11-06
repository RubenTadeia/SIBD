/* USE ist175682 
USE ist179297 */
USE ist175268;

/* Pergunta 4

4. Write a function that, given two series A and B, returns true if any region of the
elements of A overlaps with any region of the elements of B, and false otherwise.

 */

delimiter $$

create function dettectIntersection(series_id_A integer, series_id_B integer)
returns varchar(5)
begin
declare intersection varchar(5);

/* inicialization of the variables for both points */
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
