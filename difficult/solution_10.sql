-- 
-- Find the athletes who won medals in both Summer and Winter Olympics.
SELECT DISTINCT
    name
FROM public.olympics_history
WHERE medal != 'NA'
AND name IN (
    SELECT
        name
    FROM public.olympics_history
    WHERE season = 'Summer' AND medal != 'NA'
    INTERSECT
    SELECT
        name
    FROM public.olympics_history
    WHERE season = 'Winter' AND medal != 'NA'
);
