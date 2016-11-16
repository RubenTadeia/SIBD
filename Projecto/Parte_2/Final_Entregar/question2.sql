/* USE ist175682 
USE ist179297 */

USE ist175268;

/* Pergunta 2 

2. Write a query to retrieve the name of the doctor that performed more studies
containing as “X-ray” in the description, and that were performed in the last 7 seven
days with an equipment from manufacturer “Philips”.

*/

select name 
from doctor as d natural join study as s 
where s.description = 'X-ray' AND s.manufacturer = 'Philips' AND (datediff(current_date, s.date) <= 7)
group by name 
having count(request_number) >= all (select count(request_number) from study WHERE (datediff(current_date, study.date) <= 7) group by doctor_id);
