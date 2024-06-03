-- 
-- Find the athlete who participated in the most recent Olympics.
WITH latest_olympics AS (
    SELECT 
        MAX(year) AS most_recent_year
    FROM public.olympics_history
)
SELECT 
    DISTINCT name
FROM public.olympics_history
WHERE year = (
    SELECT 
        most_recent_year 
    FROM latest_olympics
);
