/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT title, sum(amount) as profit 
    FROM inventory 
    JOIN film USING (film_id) 
    JOIN rental USING (inventory_id) 
    JOIN payment USING (rental_id) 
    GROUP BY title 
    ORDER BY profit DESC;
