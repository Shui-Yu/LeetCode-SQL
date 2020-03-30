SELECT name AS customers
FROM customers c
LEFT JOIN orders o
ON c.id = o.customerid
WHERE customerid IS NULL;