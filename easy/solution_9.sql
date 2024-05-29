-- 
-- Find the youngest athlete in the dataset.
SELECT 
    name, 
    age 
FROM public.olympics_history
ORDER BY age ASC
LIMIT 1;
