WITH client AS(
    SELECT id, client_id, status, request_at, banned
    FROM trips t
    JOIN users u
    ON t.client_id = u.users_id
),   driver AS(
    SELECT id, driver_id, banned
    FROM trips t
    JOIN users u
    ON t.driver_id = u.users_id
)

SELECT request_at AS day,
       CAST(AVG(CASE WHEN status = 'completed' then 0
                ELSE 1.0 END) AS DECIMAL(3,2)) AS 'cancellation rate'   
FROM client c
JOIN driver d
ON c.id = d.id
WHERE c.banned = 'No' AND d.banned = 'No' 
      AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;