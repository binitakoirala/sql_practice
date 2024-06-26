-- 
-- Calculate the average height and weight of athletes per country.
SELECT
    team,
    AVG(CAST(height AS FLOAT)) AS avg_height,
    AVG(CAST(weight AS FLOAT)) AS avg_weight
FROM public.olympics_history
WHERE height != 'NA' AND weight != 'NA'
GROUP BY team;
