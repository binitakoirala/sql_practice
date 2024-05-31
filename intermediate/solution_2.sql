-- 
-- Calculate the total number of medals won by Denmark/Sweden.
SELECT 
    COUNT (medal)
FROM public.olympics_history
WHERE team = 'Denmark/Sweden';
