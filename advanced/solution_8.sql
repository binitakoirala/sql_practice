-- 
-- List the athletes who participated in more than one Olympic season.
SELECT
    name AS athlete_name
FROM public.olympics_history
GROUP BY athlete_name
HAVING COUNT(season) > 1;
