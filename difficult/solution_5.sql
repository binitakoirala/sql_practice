-- 
-- Calculate the average number of medals won per event.
WITH cte_medal_count_per_event AS (
    SELECT
        event,
        COUNT(medal) AS medal_count
    FROM public.olympics_history
    WHERE medal != 'NA'
    GROUP BY event
)
SELECT
    AVG(medal_count) AS avg_medal_count
FROM cte_medal_count_per_event;
