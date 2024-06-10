-- 
-- List the athletes who have participated in events for more than one country.
SELECT
    name
FROM public.olympics_history
GROUP BY name
HAVING COUNT(DISTINCT team) > 1;
