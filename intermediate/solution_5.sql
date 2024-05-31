-- 
-- List the athletes who have participated in more than one event.
SELECT 
    name
FROM olympics_history 
GROUP BY name 
HAVING COUNT(DISTINCT event) > 1;
