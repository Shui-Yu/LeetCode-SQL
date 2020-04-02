-- Subquery, JOIN
SELECT a.player_id, 
       device_id
FROM activity a
JOIN (
    SELECT player_id, 
           MIN(event_date) AS first_login
    FROM activity
    GROUP BY player_id) tb1
ON a.player_id = tb.player_id AND a.event_date = first_login;


-- Subquery, Window function
SELECT player_id, device_id
FROM (
    SELECT player_id, device_id,
           DENSE_RANK() OVER (PARTITION BY player_id ORDER BY event_date) AS rank
    FROM activity) tb2
WHERE rank = 1;
