-- 
-- Find the most common age among athletes.
WITH common_age AS(
	SELECT
		age,
		COUNT(age) AS age_count,
		RANK()OVER(ORDER BY COUNT(age) DESC) AS rank
	FROM public.olympics_history
	GROUP BY age
)
SELECT
	age,
	age_count
FROM common_age
WHERE rank = 1;
