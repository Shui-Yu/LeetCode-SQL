-- Window function, Subquery  
SELECT num consecutivenums
FROM (
    SELECT num, 
      LAG(num, 1) OVER (ORDER BY id) AS previous,
      LEAD(num, 1) OVER (ORDER BY id) AS next
    FROM logs
    ) tb
WHERE previous = num and num = next;


-- Join
SELECT DISTINCT l1.num consecutivenums
FROM logs l1
JOIN logs l2
ON l1.id = l2.id-1 AND l1.num = l2.num
JOIN logs l3
ON l2.id = l3.id-1 AND l2.num = l3.num;
