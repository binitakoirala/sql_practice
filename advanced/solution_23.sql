--
-- List all athletes who participated in more than 2 events.
SELECT
    name
FROM public.olympics_history
GROUP BY name
HAVING COUNT(event) > 2;
