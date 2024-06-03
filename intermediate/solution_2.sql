-- 
-- Calculate the total number of medals won by Denmark/Sweden.
SELECT 
    COUNT(medal) AS medal_count
FROM public.olympics_history
WHERE team = 'Denmark/Sweden';
