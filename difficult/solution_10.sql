-- 
-- Find the athletes who won medals in both Summer and Winter Olympics.
SELECT
    a.name
FROM public.olympics_history a
WHERE a.medal != 'NA'
AND a.name IN (
    SELECT
        name
    FROM public.olympics_history
    WHERE season = 'Summer' AND medal != 'NA'
)
AND a.name IN (
    SELECT
        name
    FROM public.olympics_history
    WHERE season = 'Winter' AND medal != 'NA'
);	
