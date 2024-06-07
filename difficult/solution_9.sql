-- 
-- List the athletes with the same height but different weights.
WITH cte_athletes AS (
    SELECT DISTINCT
        name,
	CAST(height AS FLOAT) AS height,
	CAST(weight AS FLOAT) AS weight
    FROM public.olympics_history
    WHERE height != 'NA' AND weight != 'NA'
)
SELECT DISTINCT
    a.name,
    a.height,
    a.weight
FROM cte_athletes a
INNER JOIN cte_athletes b
    ON a.height = b.height AND a.weight != b.weight AND a.name != b.name
ORDER BY a.height, a.weight;
