-- 
-- List athletes who participated in events held in Lillehammer.
SELECT DISTINCT name FROM public.olympics_history
WHERE city = 'Lillehammer';
