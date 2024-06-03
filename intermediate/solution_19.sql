-- 
-- Find the youngest male athlete.
WITH youngest_athlete AS (
    SELECT DISTINCT
        name,
        age,
        RANK() OVER (ORDER BY age ASC) AS rank
    FROM public.olympics_history
    WHERE sex = 'M' AND age IS NOT NULL AND age != 'NA'
)
SELECT
    name,
    age
FROM youngest_athlete
WHERE rank = 1;
