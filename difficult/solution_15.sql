-- 
-- Find the most common age and height combination among athletes.
WITH cte_common_age_height_combination AS (
    SELECT
        age,
        height,
        RANK() OVER (ORDER BY COUNT(DISTINCT name) DESC) AS rank
    FROM public.olympics_history
    WHERE age != 'NA' AND height != 'NA'
    GROUP BY age, height
)
SELECT
    age,
    height
FROM cte_common_age_height_combination
WHERE rank = 1;
