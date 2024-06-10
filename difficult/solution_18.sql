-- 
-- Calculate the average weight of athletes per sport.
SELECT
    sport,
    AVG(CAST(weight AS FLOAT)) AS avg_weight,
FROM public.olympics_history
WHERE weight != 'NA'
GROUP BY sport;
