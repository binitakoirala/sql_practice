-- 
-- Calculate the average number of medals per athlete per country.
WITH cte_medal_per_country_per_athlete AS (
    SELECT
        team,
        COUNT(medal) FILTER (WHERE medal !='NA') / CAST(COUNT(DISTINCT name) AS FLOAT) AS medal_per_athlete
    FROM public.olympics_history
    GROUP BY team
)
SELECT
    AVG(medal_per_athlete) AS avg_medal_per_country_per_athlete
FROM cte_medal_per_country_per_athlete;
