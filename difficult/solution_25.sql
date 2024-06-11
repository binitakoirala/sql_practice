-- 
-- List the athletes who participated in events held in both Barcelona and Lillehammer.
SELECT DISTINCT
    name
FROM public.olympics_history
WHERE city = 'Barcelona' 
INTERSECT
SELECT DISTINCT
    name
FROM public.olympics_history
WHERE city = 'Lillehammer';
