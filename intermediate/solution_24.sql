-- 
-- List all athletes who participated in Football.
SELECT DISTINCT
	name
FROM public.olympics_history
WHERE sport = 'Football';
