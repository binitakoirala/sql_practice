-- 
-- Find all athletes who are from China.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE
    team = 'China';
