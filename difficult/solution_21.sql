-- 
-- Calculate the percentage of medal-winning athletes per country.
WITH cte_athlete_total_count AS (
    SELECT
        COUNT(DISTINCT name) AS total_athletes
    FROM public.olympics_history
),
cte_medal_winning_athlete_count_country AS (
    SELECT
        team,
        COUNT(DISTINCT name) AS athlete_count
    FROM public.olympics_history
    WHERE medal != 'NA'
    GROUP BY team
)
SELECT
    cmwacc.team,
    ROUND((cmwacc.athlete_count * 100.0 / catc.total_athletes), 2) AS athlete_percentage
FROM cte_medal_winning_athlete_count_country cmwacc, cte_athlete_total_count catc
ORDER BY athlete_percentage DESC;
