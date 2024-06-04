-- 
-- Find the average height and weight of athletes who won a medal.
SELECT
    AVG(CAST(height AS FLOAT)) AS avg_height,
    AVG(CAST(weight AS FLOAT)) AS avg_weight
FROM public.olympics_history
WHERE medal != 'NA' AND height != 'NA' AND weight != 'NA';
