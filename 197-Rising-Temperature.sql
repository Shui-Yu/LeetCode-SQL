-- JOIN
SELECT w1.id
FROM weather w1
JOIN weather w2
ON w1.recorddate = DATEADD(day, 1, w2.recorddate)
WHERE w1.temperature > w2.temperature;

-- Window Function, Subquery
SELECT id
FROM (
    SELECT *, LAG(temperature) OVER (ORDER BY recorddate) AS prev_temp,
              LAG(recorddate) OVER (ORDER BY recorddate) prev_date
    FROM weather
    ) tb
WHERE DATEADD(day, 1, prev_date) = recorddate AND prev_temp < temperature;