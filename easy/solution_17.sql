-- 
-- Select athletes who participated in Tug-Of-War.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE 
    sport = 'Tug-Of-War'
