-- 
-- Calculate the total number of medals won per sport.
SELECT
	sport,
	COUNT(medal) AS medal_count
FROM public.olympics_history
WHERE medal != 'NA'
GROUP BY sport
ORDER BY medal_count DESC;
