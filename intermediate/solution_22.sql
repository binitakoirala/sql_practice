-- 
-- List the athletes who are taller than the average height.
SELECT 
    DISTINCT name, height
FROM public.olympics_history 
WHERE height != 'NA' AND CAST(height AS INT) > ( 
    SELECT AVG(CAST(height AS INT))
    FROM public.olympics_history
    WHERE height != 'NA'
);
