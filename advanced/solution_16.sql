-- 
-- Find the most represented sport per country.
WITH cte_sport AS (
    SELECT
        team,
        sport,
        COUNT(name) AS athlete_count
    FROM public.olympics_history
    GROUP BY team, sport
),
cte_ranked_sport AS (
    SELECT
        team,
        sport,
        athlete_count,
        RANK() OVER (PARTITION BY team ORDER BY athlete_count DESC) AS rank
    FROM cte_sport
)
SELECT
    team,
    sport,
    athlete_count
FROM cte_ranked_sport
WHERE rank = 1
ORDER BY team;
