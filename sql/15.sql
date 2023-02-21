/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name as name, 
count(film_id) as sum
FROM film 
JOIN language USING (language_id) 
JOIN film_category USING (film_id) 
JOIN category USING (category_id) 
WHERE language.name = 'English' 
GROUP BY category.name 
ORDER BY name;
