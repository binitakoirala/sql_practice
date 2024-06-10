-- 
-- List the athletes who participated in the most events in a single Olympic season.
WITH cte_athletes AS (
    SELECT
        name,
        games,
        COUNT(DISTINCT event) AS event_count,
        RANK() OVER(ORDER BY COUNT(DISTINCT event) DESC) AS rank
    FROM public.olympics_history
    GROUP BY name, games
)
SELECT
    name,
    games,
    event_count
FROM cte_athletes
WHERE rank = 1;
