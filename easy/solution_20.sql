-- 
-- Select athletes who participated in the Cross Country Skiing Men's 10 kilometres event.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE event = 'Cross Country Skiing Men''s 10 kilometres';
