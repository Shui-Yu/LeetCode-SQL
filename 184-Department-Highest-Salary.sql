SELECT department, employee, salary
FROM (
    SELECT d.name AS department,
           e.name AS employee,
           salary,
           DENSE_RANK() OVER(PARTITION BY departmentid
                             ORDER BY salary DESC) AS rank
    FROM employee e
    JOIN department d
    ON e.departmentid = d.id) tb
WHERE rank = 1;

