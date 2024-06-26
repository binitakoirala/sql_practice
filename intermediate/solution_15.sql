-- 
-- Calculate the average age of athletes who participated in the Summer Olympics.
SELECT
	AVG(age::NUMERIC) AS average_age
FROM public.olympics_history
WHERE age != 'NA' AND season = 'Summer';
