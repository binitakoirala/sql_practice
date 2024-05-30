-- 
-- List all athletes who won a gold medal.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE medal = 'Gold';
