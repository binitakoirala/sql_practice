-- 
-- Find all athletes who participated in Judo.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE sport = 'Judo';
