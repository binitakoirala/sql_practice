-- 
-- Calculate the average age of athletes who participated in multiple events.
SELECT
    name,
    AVG(CAST(age AS INT)) AS average_age
FROM public.olympics_history
WHERE age != 'NA'
GROUP BY name
HAVING COUNT(DISTINCT event) > 1;
