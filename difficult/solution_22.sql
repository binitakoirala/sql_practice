-- 
-- List the top 10 oldest athletes.
SELECT DISTINCT
    name,
    age
FROM public.olympics_history
WHERE age != 'NA'
ORDER BY age DESC
LIMIT 10;
