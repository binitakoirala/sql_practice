-- 
-- Calculate the average number of athletes per event.
WITH cte_athlete_count_per_event AS(
	SELECT
		event,
		count(name) as athlete_count
	FROM public.olympics_history
	GROUP BY event
)
SELECT
	AVG(athlete_count) AS avg_athlete_count
FROM cte_athlete_count_per_event;
