-- 
-- FInd tallest athlete
WITH ranked_olympics AS (
  SELECT DISTINCT name, height,
         RANK() OVER (ORDER BY height DESC) AS rank
  FROM public.olympics_history
  WHERE height IS NOT NULL AND height!= 'NA'
)
SELECT name, height
FROM ranked_olympics
WHERE rank = 1;
