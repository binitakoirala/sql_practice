-- 
-- List the athletes who have the same height and weight.
WITH cte_athletes AS (
	SELECT DISTINCT
		name,
		height,
		weight
	FROM public.olympics_history
	WHERE height != 'NA' AND weight != 'NA'
)
SELECT DISTINCT
	a.name,
	a.height,
	a.weight
FROM cte_athletes a
INNER JOIN cte_athletes b
	ON a.name != b.name AND a.height = b.height AND a.weight = b.weight
ORDER BY a.height, a.weight;
