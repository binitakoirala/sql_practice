-- 
-- Find the athlete who has the highest total participation in events.
WITH cte_highest_total_participation AS (
    SELECT
        name,
        COUNT(DISTINCT event) AS event_count,
        RANK() OVER(ORDER BY COUNT(DISTINCT event) DESC) AS rank
    FROM public.olympics_history
    GROUP BY name
)
SELECT
    name
FROM cte_highest_total_participation
WHERE rank = 1;
