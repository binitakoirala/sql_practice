-- 
-- Calculate the average weight of athletes from the United States.
SELECT
    AVG(CAST(weight AS INT)) AS average_weight
FROM olympics_history
WHERE weight != 'NA' AND team = 'United States';
