-- 
-- Find the athletes who have the same age and height. 
WITH cte_athletes AS (
    SELECT DISTINCT
        name,
        CAST(age AS FLOAT),
        CAST(height AS FLOAT)
    FROM public.olympics_history
    WHERE age != 'NA' AND height != 'NA'
)
SELECT DISTINCT
    a.name,
    a.age,
    a.height
FROM cte_athletes a
INNER JOIN cte_athletes b
    ON a.name != b.name AND a.age = b.age AND a.height = b.height
ORDER BY a.age, a.height;
