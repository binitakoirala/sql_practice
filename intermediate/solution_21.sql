-- 
-- Find the number of gold medals won per country.
SELECT
	team,
	COUNT(medal) AS medal_count
FROM public.olympics_history
WHERE medal = 'Gold' AND medal != 'NA'
GROUP BY team;
