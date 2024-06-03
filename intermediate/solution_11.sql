-- 
-- Count the number of male and female athletes.
SELECT 
	sex, 
	COUNT(sex) AS count
FROM public.olympics_history
GROUP BY sex;
