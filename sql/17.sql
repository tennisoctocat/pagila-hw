/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country, sum(amount) as profit FROM customer JOIN rental USING (customer_id) JOIN payment USING (rental_id) JOIN address USING (address_id) JOIN city USING (city_id) JOIN country USING (country_id) GROUP BY country ORDER BY country ASC;
