/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film_id, title, count(inventory_id) FROM film JOIN inventory USING (film_id) WHERE title ILIKE 'h%' GROUP BY film_id ORDER BY title DESC;
