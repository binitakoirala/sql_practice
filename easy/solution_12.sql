-- 
-- FInd tallest athlete
SELECT 
    name, 
    height 
FROM public.olympics_history
WHERE height IS NOT NULL AND height != 'NA'
ORDER BY height DESC
LIMIT 1;
