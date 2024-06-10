-- 
-- Find the country with the highest average age of athletes.
WITH cte_athlete_highest_avg_age AS (
    SELECT DISTINCT
        team,
        AVG(CAST(age AS FLOAT)) AS avg_age,
        RANK() OVER (ORDER BY AVG(CAST(age AS FLOAT)) DESC) AS rank
    FROM public.olympics_history
    WHERE age != 'NA'
    GROUP BY team
)
SELECT
    team,
    avg_age
FROM cte_athlete_highest_avg_age
WHERE rank = 1;
