-- 
-- List all athletes who are 24 years old.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE 
    age = '24';
