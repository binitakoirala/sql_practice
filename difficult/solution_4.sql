-- 
-- Find the country with the most gold medals.
  WITH cte_medals AS (
    SELECT 
        team, 
        COUNT(medal) AS quantity_of_gold_medals
    FROM public.olympics_history
    WHERE medal = 'Gold' AND medal != 'NA'
    GROUP BY team
), 
SELECT
    team,
    quantity_of_gold_medals
FROM cte_medals
WHERE quantity_of_gold_medals = ( 
    SELECT MAX(quantity_of_gold_medals) FROM cte_medals
);
