-- 
-- Find all athletes who are younger than the average age.
SELECT 
    DISTINCT name
FROM public.olympics_history 
WHERE age != 'NA' AND age::NUMERIC < ( 
    SELECT AVG (age::NUMERIC)
    FROM public.olympics_history
    WHERE age != 'NA'
);
