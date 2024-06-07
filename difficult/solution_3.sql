-- 
-- List the athletes who participated in every Olympic season from 1988 to 1994.
WITH cte_athlete_participated_year AS (
    SELECT DISTINCT
        name,
        year
    FROM public.olympics_history
    WHERE CAST(year AS INT) BETWEEN 1988 AND 1994
)
SELECT
    name
FROM cte_athlete_participated_year
GROUP BY name
HAVING COUNT(year) = (SELECT COUNT(DISTINCT year) FROM cte_athlete_participated_year);
