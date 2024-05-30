-- 
-- List all athletes who are from the United States.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE team = 'United States';
