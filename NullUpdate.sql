/*Used for C# Film */

use sakila;

select * from Film;
select * from language;

/*Check what is NULL*/
SELECT * FROM film
WHERE original_language_id IS NULL;

SELECT * FROM film
WHERE original_language_id = 1;

/*Test for original_language_id Update*/
BEGIN TRAN
UPDATE 
SET original_language_id = 7
WHERE film_id = 1
COMMIT TRAN
GO

/*Update for All NULL */BEGIN TRAN
UPDATE film
SET original_language_id = 7
WHERE release_year =  2006
COMMIT TRAN

