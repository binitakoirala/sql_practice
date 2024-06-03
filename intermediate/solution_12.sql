-- 
-- Find the athlete who participated in the most recent Olympics.
SELECT
    DISTINCT name
FROM public.olympics_history
WHERE year = (
    SELECT
        MAX(year) AS most_recent_year
    FROM public.olympics_history
);
