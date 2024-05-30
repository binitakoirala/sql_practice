-- 
-- List the number of athletes per country.
SELECT 
    team, COUNT(DISTINCT name) AS number_of_athletes 
FROM public.olympics_history
GROUP BY team
ORDER BY number_of_athletes;
