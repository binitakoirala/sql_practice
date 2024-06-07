-- 
-- List the athletes who have the same name but different ages.
WITH cte_athletes AS (
    SELECT DISTINCT
        name,
        age
    FROM public.olympics_history
    WHERE age != 'NA'
)
SELECT DISTINCT
    a.name,
    a.age
FROM cte_athletes a
INNER JOIN cte_athletes b
    ON a.name = b.name AND a.age != b.age
ORDER BY a.name;
