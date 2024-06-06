-- 
-- Calculate the average age of athletes who participated in Winter sports.
SELECT
    AVG(CAST(age AS FLOAT))
FROM public.olympics_history
WHERE season = 'Winter' AND age != 'NA';
