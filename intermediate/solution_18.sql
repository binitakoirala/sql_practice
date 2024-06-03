-- 
-- Count the number of unique events in the dataset.
SELECT
    COUNT(DISTINCT event) AS unique_event_count
FROM public.olympics_history;
