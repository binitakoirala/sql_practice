-- 
-- Find all athletes who participated in the 1988 Winter Olympics.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE 
    year = 1988 AND season = 'Winter';
