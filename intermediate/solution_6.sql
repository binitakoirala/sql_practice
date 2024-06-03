-- 
-- Find the number of athletes who participated in the 1992 Winter Olympics.
SELECT 
    COUNT(DISTINCT name) AS athlete_count
FROM public.olympics_history
WHERE games = '1992 Winter';
