-- 
-- List the athletes who participated in the 1900 Summer Olympics.
SELECT DISTINCT
    name
FROM public.olympics_history
WHERE year = '1900' AND season = 'Summer';
