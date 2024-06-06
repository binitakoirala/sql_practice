-- 
-- List the top 10 tallest athletes.
SELECT DISTINCT
    name,
    CAST(height AS FLOAT)
FROM public.olympics_history
WHERE height != 'NA'
ORDER BY height DESC
LIMIT 10;
