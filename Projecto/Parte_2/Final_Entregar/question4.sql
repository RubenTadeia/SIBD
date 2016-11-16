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

/* inicialization of the variable*/
SET intersection = 'False';

if
(
	select distinct true
	from (select series_id, x1, y1, x2, y2 from region where series_id = series_id_A) as s1, 
	(select series_id, x1, y1, x2, y2 from region where series_id = series_id_B) as s2
	WHERE
	( 
		((s1.x1 >= LEAST(s2.x1, s2.x2) AND s1.x1 <= GREATEST(s2.x1, s2.x2))
		OR
		(s1.x2 >= LEAST(s2.x1, s2.x2) AND s1.x2 <= GREATEST(s2.x1, s2.x2)))
		AND
		((s1.y1 >= LEAST(s2.y1, s2.y2) AND s1.y1 <= GREATEST(s2.y1, s2.y2))
		OR
		(s1.y2 >= LEAST(s2.y1, s2.y2) AND s1.y2 <= GREATEST(s2.y1, s2.y2)))
	OR
	( 
		((s2.x1 >= LEAST(s1.x1, s1.x2) AND s2.x1 <= GREATEST(s1.x1, s1.x2))
		OR
		(s2.x2 >= LEAST(s1.x1, s1.x2) AND s2.x2 <= GREATEST(s1.x1, s1.x2)))
		AND
		((s2.y1 >= LEAST(s1.y1, s1.y2) AND s2.y1 <= GREATEST(s1.y1, s1.y2))
		OR
		(s2.y2 >= LEAST(s1.y1, s1.y2) AND s2.y2 <= GREATEST(s1.y1, s1.y2)))
	)
)
)
THEN SET intersection = 'True';

end if;

return intersection;
end$$
delimiter ;
