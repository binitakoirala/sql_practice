-- 
-- Calculate the percentage of athletes from each country.
WITH cte_total_athlete_count AS (
    SELECT DISTINCT
        COUNT(name) AS athlete_name_count
    FROM public.olympics_history
),
cte_country_count AS (
    SELECT
        COUNT(team) AS team_count
    FROM public.olympics_history
    GROUP BY team
)
SELECT
    ROUND((cc.team_count * 100.0 / tac.athlete_name_count), 2) AS athlete_percentage_for_each_country
FROM cte_total_athlete_count tac, cte_country_count cc
ORDER BY athlete_percentage_for_each_country DESC;
