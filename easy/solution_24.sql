-- 
-- Select athletes who are older than 30 years.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE age > '30' AND age != 'NA';
