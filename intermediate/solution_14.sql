-- 
-- Find the number of athletes who did not win a medal in the 1994 Winter Olympics.
SELECT 
    COUNT(DISTINCT name)
FROM public.olympics_history
WHERE games = '1994 Winter' AND medal = 'NA'
