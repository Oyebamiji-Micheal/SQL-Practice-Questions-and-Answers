SELECT actor_category, COUNT(actor_category) FROM 
	(SELECT 
		CASE
			WHEN SUBSTRING(first_name, 1, 1) = 'A' THEN 'a_actors'
			WHEN SUBSTRING(first_name, 1, 1) = 'B' THEN 'b_actors'
			WHEN SUBSTRING(first_name, 1, 1) = 'C' THEN 'c_actors'
			ELSE 'other_actors'
		END AS actor_category
	FROM actor) AS temp
GROUP BY actor_category;