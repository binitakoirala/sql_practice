-- 
-- List the athletes who won medals in multiple events.
SELECT DISTINCT
        name
FROM public.olympics_history
WHERE name IN (
    SELECT
        name
    FROM public.olympics_history
    WHERE medal != 'NA'
    GROUP BY name
    HAVING COUNT(DISTINCT event) > 1
);
