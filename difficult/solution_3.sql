-- 
-- List the athletes who participated in every Olympic season from 1988 to 1994.
SELECT
    name
FROM public.olympics_history
WHERE year IN ('1988', '1992', '1994')
GROUP BY name
HAVING COUNT(DISTINCT year) = 3;
