-- 
-- Find all athletes who are taller than 180 cm.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE 
    height > '180' AND height != 'NA' AND height IS NOT NULL
