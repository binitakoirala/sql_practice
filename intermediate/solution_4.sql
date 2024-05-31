-- 
-- Find the most common sport in the dataset.
WITH ranked_sport AS (
    SELECT 
        sport,
        COUNT(sport) AS count,
        RANK() OVER (ORDER BY COUNT(sport) DESC) AS rank
    FROM public.olympics_history
    GROUP BY sport
)
SELECT 
    sport,
    count
FROM ranked_sport
WHERE rank = 1;
