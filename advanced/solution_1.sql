-- 
-- Find the country with the most athletes.
WITH cte_country AS(
	SELECT
		team,
		COUNT(DISTINCT name) AS athlete_count,
		RANK() OVER (ORDER BY COUNT(DISTINCT name) DESC) AS rank
	FROM public.olympics_history
	GROUP BY team
)
SELECT
	team,
	athlete_count
FROM cte_country
WHERE rank = 1;
