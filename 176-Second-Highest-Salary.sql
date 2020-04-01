-- Subquery
SELECT MAX(salary) as secondhighestsalary
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);


-- Window function
-- DENSE_RANK()
SELECT AVG(salary) secondhighestsalary
FROM (
    SELECT salary,
      DENSE_RANK() OVER (ORDER BY salary DESC) rank
    FROM employee
    ) tb
WHERE rank = 2;

-- ROW_NUMBER()
SELECT salary secondhighestsalary
FROM (
    SELECT salary,
      ROW_NUMBER() OVER (ORDER BY salary DESC) rank
    FROM employee
    ) tb
WHERE rank = 2;


-- OFFSET FETCH
SELECT salary AS secondhighestsalary
FROM employee
ORDER BY salary DESC
OFFSET 1 ROW
FETCH NEXT 1 ROW ONLY;
