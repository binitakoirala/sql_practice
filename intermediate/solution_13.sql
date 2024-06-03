-- 
-- List all athletes sorted by their height in descending order.
SELECT DISTINCT
	name,
	height::numeric AS height
FROM public.olympics_history
WHERE height != 'NA'
ORDER BY height DESC;
