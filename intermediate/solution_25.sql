-- 
-- Find the total weight of all athletes combined.
SELECT
	SUM(CAST(weight AS FLOAT))
FROM public.olympics_history
WHERE weight != 'NA';
