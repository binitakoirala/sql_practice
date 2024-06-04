-- 
-- Find the city that hosted the most events.
WITH cte_city AS(
	SELECT
		city,
		COUNT(event) AS event_count,
		RANK() OVER (ORDER BY COUNT(DISTINCT event) DESC) AS rank
	FROM public.olympics_history
	GROUP BY city
)
SELECT
	city,
	event_count
FROM cte_city
WHERE rank = 1;
