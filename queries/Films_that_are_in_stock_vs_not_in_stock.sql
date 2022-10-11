SELECT 
	CASE 
		WHEN inventory_id IS NULL THEN 'not in stock'
		ELSE 'in stock'
	END AS in_stock,
	COUNT(DISTINCT film.film_id)
FROM film
LEFT JOIN inventory 
	ON film.film_id = inventory.film_id
GROUP BY in_stock;