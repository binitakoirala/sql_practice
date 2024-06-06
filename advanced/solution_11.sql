-- 
-- Find the country with the highest average athlete height.
WITH cte_avg_athlete_height AS (
    SELECT
        team,
        AVG(CAST(height AS FLOAT)) AS avg_height
    FROM public.olympics_history
    WHERE height != 'NA'
    GROUP BY team
),
ranked_height AS (
    SELECT
        team,
        avg_height,
        RANK() OVER (ORDER BY avg_height DESC) AS rank
    FROM cte_avg_athlete_height
)
SELECT 
    team,
    avg_height
FROM ranked_height
WHERE rank = 1;
