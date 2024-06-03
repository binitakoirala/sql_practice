-- 
-- List athletes who have participated in multiple Olympics.
SELECT 
	name
FROM public.olympics_history 
GROUP BY name
HAVING COUNT(games) > 1;
