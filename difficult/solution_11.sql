-- 
-- Calculate the percentage of athletes from each country.
WITH cte_total_count AS (
    SELECT
        COUNT(DISTINCT name) AS total_athletes
    FROM public.olympics_history
),
cte_country_athlete_count AS (
    SELECT
        team,
        COUNT(DISTINCT name) AS athlete_count
    FROM public.olympics_history
    GROUP BY team
)
SELECT
    ccac.team,
    ROUND((ccac.athlete_count * 100.0 / ctc.total_athletes), 2) AS athlete_percentage
FROM cte_country_athlete_count ccac, cte_total_count ctc
ORDER BY athlete_percentage DESC;
