-- 
-- Find the event with the most athletes participating.
WITH cte_event AS(
    SELECT
        event,
        COUNT(DISTINCT name) AS athlete_count,
        RANK() OVER (ORDER BY COUNT(DISTINCT name) DESC) AS rank
    FROM public.olympics_history
    GROUP BY event
)
SELECT
    event,
    athlete_count
FROM cte_event
WHERE rank = 1;
