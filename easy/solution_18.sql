-- 
-- Find all athletes who participated in both 1992 and 1994.
SELECT 
    DISTINCT name FROM public.olympics_history
WHERE 
    year = 1992 
INTERSECT
SELECT 
    DISTINCT name FROM public.olympics_history
WHERE 
    year = 1994
