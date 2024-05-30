-- 
-- Find the youngest athlete in the dataset.
WITH ranked_olympics AS (
  SELECT DISTINCT name, age,
         RANK() OVER (ORDER BY age ASC) AS rank
  FROM public.olympics_history
  WHERE age IS NOT NULL AND age != 'NA'
)
SELECT name, age
FROM ranked_olympics
WHERE rank = 1;
