-- 
-- List all events that took place in Barcelona
SELECT 
    DISTINCT event
FROM public.olympics_history
WHERE city = 'Barcelona';
