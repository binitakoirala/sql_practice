-- 
-- Calculate the average age of athletes per sport.
SELECT
	sport,
	AVG(CAST(age AS INT)) AS average_age
FROM public.olympics_history
WHERE age != 'NA'
GROUP BY sport;
