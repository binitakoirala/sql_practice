-- 
-- Find the country with the highest average age of athletes.
WITH cte_athlete_highest_avg_age AS (
    SELECT DISTINCT
        team,
        AVG(CAST(age AS FLOAT)) AS avg_age
    FROM public.olympics_history
    WHERE age != 'NA'
    GROUP BY team
),
ranked_age AS (
    SELECT
        team,
        avg_age,
        RANK() OVER (ORDER BY avg_age DESC) AS rank
    FROM cte_athlete_highest_avg_age
)
SELECT
    team,
    avg_age
FROM ranked_age
WHERE rank = 1;
