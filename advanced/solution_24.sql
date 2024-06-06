-- 
-- Find the most common height among athletes.
WITH common_height AS (
    SELECT
        CAST(height AS FLOAT),
        COUNT(height) AS height_count,
        RANK() OVER (ORDER BY COUNT(height) DESC) AS rank
    FROM public.olympics_history
    WHERE height != 'NA'
    GROUP BY height
)
SELECT
    height
FROM common_height
WHERE rank = 1;
