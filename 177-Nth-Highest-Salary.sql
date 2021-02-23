-- SQL Server
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT DISTINCT Salary
        FROM Employee
        ORDER BY Salary DESC
        OFFSET @N-1 ROWS
        FETCH FIRST 1 ROW ONLY
    );
END
