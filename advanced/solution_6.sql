-- 
-- List the top 5 heaviest athletes.
SELECT DISTINCT
	name,
	CAST(weight AS FLOAT)
FROM public.olympics_history
WHERE weight != 'NA'
ORDER BY weight DESC
LIMIT 5;
