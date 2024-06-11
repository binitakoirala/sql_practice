-- 
-- Find the most common event among medal-winning athletes.
WITH cte_most_common_event AS (
    SELECT
        event,
        COUNT(medal) AS medal_count,
        RANK() OVER(ORDER BY COUNT(medal) DESC) AS rank
    FROM public.olympics_history
    WHERE medal != 'NA'
    GROUP BY event
)
SELECT event
FROM cte_most_common_event
WHERE rank = 1;
