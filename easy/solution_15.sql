-- 
-- List all athletes who are 27 years old and above.
SELECT 
    DISTINCT name 
FROM public.olympics_history
WHERE 
    age >= '27' AND age != 'NA'
