-- 
-- Find the athletes who participated in the most different sports.
WITH cte_sports AS (
    SELECT
        name,
        COUNT(DISTINCT sport) AS sport_count,
        RANK() OVER (ORDER BY COUNT(DISTINCT sport) DESC) AS rank
    FROM public.olympics_history
    GROUP BY name
)
SELECT
    name
FROM cte_sports
WHERE rank = 1;
