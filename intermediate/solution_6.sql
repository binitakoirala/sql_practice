-- 
-- Find the number of athletes who participated in the 1992 Winter Olympics.
SELECT 
    COUNT(DISTINCT name)
FROM public.olympics_history
WHERE games = '1992 Winter';
