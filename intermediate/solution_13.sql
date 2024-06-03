-- 
-- List all athletes sorted by their height in descending order.
WITH height_sorted AS (
SELECT
	name,
	height::numeric as height
FROM public.olympics_history
WHERE height != 'NA'
ORDER BY height DESC
)
SELECT
	DISTINCT name
FROM height_sorted;
