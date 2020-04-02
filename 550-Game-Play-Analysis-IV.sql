WITH tb1 AS(
    SELECT player_id, 
        MIN(event_date) OVER (PARTITION BY player_id) AS first_date,
        LEAD(event_date) OVER (PARTITION BY player_id 
                               ORDER BY event_date) AS lead_date
    FROM activity),   
     tb2 AS(    
    SELECT player_id 
    FROM tb1
    WHERE dateadd(day,1, first_date) = lead_date)

SELECT CAST(COUNT(DISTINCT player_id)*1.0/(SELECT COUNT(DISTINCT player_id) FROM activity) AS DECIMAL(10,2)) AS fraction
FROM tb2;

