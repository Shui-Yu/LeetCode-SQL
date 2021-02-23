-- SQL Server: OFFSET FETCH
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

-- MySQL: Window Function 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      WITH tab AS(
      SELECT Salary, DENSE_RANK() OVER(ORDER BY Salary DESC) AS 'rank'
      FROM Employee)
      
      SELECT DISTINCT Salary
      FROM tab
      WHERE tab.rank = N   
  );
END
