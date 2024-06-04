-- 
-- Find the number of events per sport.
SELECT
	sport,
	COUNT(DISTINCT event) AS event_count
FROM public.olympics_history
GROUP BY sport;
