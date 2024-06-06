-- 
-- List the athletes with the highest and lowest weight.
WITH cte_weight AS (
SELECT DISTINCT 
    name,
    weight,
    RANK() OVER (ORDER BY CAST(weight AS FLOAT) DESC) AS weight_rank_desc,
    RANK() OVER (ORDER BY CAST(weight AS FLOAT) ASC) AS weight_rank_asc
FROM public.olympics_history
where weight != 'NA'
)
SELECT DISTINCT
    name,
    weight
FROM cte_weight
WHERE weight_rank_desc = 1 OR weight_rank_asc = 1;
