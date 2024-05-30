-- 
-- List all female athletes.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE sex = 'F';
