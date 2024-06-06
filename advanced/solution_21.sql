-- 
-- Find the number of female athletes who won a medal.
SELECT
    COUNT(name)
FROM public.olympics_history
WHERE sex = 'F' AND medal != 'NA';
