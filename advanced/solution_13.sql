-- 
-- Find the number of athletes who participated in the 1920 Summer Olympics.
SELECT
    COUNT(name) AS athlete_count
FROM public.olympics_history
WHERE year = '1920' AND season = 'Summer';
