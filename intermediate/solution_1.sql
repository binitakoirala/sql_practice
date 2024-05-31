-- 
-- Find the average height of all athletes.
SELECT
    AVG(height::NUMERIC) AS average_height
FROM public.olympics_history
WHERE height != 'NA';
