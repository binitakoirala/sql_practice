-- 
-- Find the total number of athletes who won at least one medal.
SELECT
    COUNT(DISTINCT name)
FROM public.olympics_history
WHERE medal != 'NA';
