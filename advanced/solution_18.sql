-- 
-- Calculate the average number of events per athlete.
WITH cte_event_count_per_athlete AS (
    SELECT
        name,
        COUNT(event) AS event_count
    FROM public.olympics_history
    GROUP BY name
)
SELECT
    AVG(event_count) AS avg_event_count
FROM cte_event_count_per_athlete;
