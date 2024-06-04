-- 
-- List the athletes who participated in the most number of events.
WITH cte_events AS(
	SELECT
		name,
		COUNT(event) AS event_count,
		RANK()OVER(ORDER BY COUNT(event) DESC) AS rank
	FROM public.olympics_history
	GROUP BY name
)
SELECT
	name,
	event_count
FROM cte_events
WHERE rank = 1;
