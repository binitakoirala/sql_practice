-- 
-- Find all athletes who participated in the 1992 Summer Olympics.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE
    year = 1992 AND
    season = 'Summer';
