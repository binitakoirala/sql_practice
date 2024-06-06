-- 
-- Calculate the percentage of athletes who did not win a medal.
WITH cte_total_athlete_count AS (
    SELECT DISTINCT
        COUNT(name) as athlete_name_count
    FROM public.olympics_history
),
cte_athlete_count_without_medal AS (
    SELECT DISTINCT
        COUNT(name) as athlete_name_count_without_medal
    FROM public.olympics_history
    WHERE medal = 'NA'
)
SELECT
    (acwm.athlete_name_count_without_medal * 100.0 / tac.athlete_name_count) AS percentage_without_medals
FROM cte_total_athlete_count tac, cte_athlete_count_without_medal acwm;
