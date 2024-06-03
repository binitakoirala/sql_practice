-- 
-- Find the athlete with the highest weight.
WITH ranked_olympics AS (
    SELECT DISTINCT
        name,
        weight,
        RANK() OVER (ORDER BY CAST(weight AS DECIMAL) DESC) AS rank
    FROM public.olympics_history
    WHERE weight IS NOT NULL AND weight != 'NA'
)
SELECT
    name,
    weight
FROM ranked_olympics
WHERE rank = 1;
