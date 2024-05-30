-- 
-- Find the most common sport in the dataset.
SELECT 
    sport,
    COUNT(sport) AS count
FROM public.olympics_history
GROUP BY sport
ORDER BY count DESC
LIMIT 1;
