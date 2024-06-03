-- 
-- Count the number of male and female athletes.
SELECT 
	sex, 
	COUNT (sex) 
FROM public.olympics_history
GROUP BY sex;
