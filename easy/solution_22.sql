-- 
-- Find all athletes who weigh more than 75 kg.
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE weight::numeric > 75 AND weight != 'NA';
