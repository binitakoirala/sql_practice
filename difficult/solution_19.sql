-- 
-- List the athletes who have the same weight but different heights.
WITH cte_athletes AS (
    SELECT DISTINCT
        name,
        CAST(weight AS FLOAT) AS weight,
        CAST(height AS FLOAT) AS height
    FROM public.olympics_history
    WHERE weight != 'NA' AND height != 'NA'
)
SELECT DISTINCT
    a.name,
    a.weight,
    a.height
FROM cte_athletes a
INNER JOIN cte_athletes b
    ON a.weight = b.weight AND a.height != b.height AND a.name != b.name
ORDER BY a.weight, a.height;
