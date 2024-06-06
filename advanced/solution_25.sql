-- 
-- Calculate the total number of events in which athletes from Denmark participated.
SELECT
    COUNT(event) as total_event_count
FROM public.olympics_history
WHERE team = 'Denmark';
