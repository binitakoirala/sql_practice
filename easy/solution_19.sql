-- 
-- List all athletes who did not win a medal.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE
    medal = 'NA';
