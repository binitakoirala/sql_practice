-- 
-- Find the total number of events in which athletes from China participated.
SELECT 
	COUNT(event)
FROM public.olympics_history
WHERE team = 'China';
