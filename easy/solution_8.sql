-- 
-- Select athletes who participated in the Winter Olympics.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE
    season = 'Winter';
