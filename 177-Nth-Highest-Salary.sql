-- Window function
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT AVG(salary)
        FROM (
            SELECT salary,
              DENSE_RANK() OVER (ORDER BY salary DESC) rank
            FROM employee
            ) tb
        WHERE rank = @N
    );
END

-- OFFSET FETCH
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT DISTINCT salary
        FROM employee
        ORDER BY salary DESC
        OFFSET @N-1 ROWS
        FETCH FIRST 1 ROW ONLY
    );
END
