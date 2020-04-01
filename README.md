# LeetCode SQL Questions

| No | Title                      | Difficulty | Method                                  | Solution |
|----|----------------------------|------------|-----------------------------------------|----------|
| 1  | __175.__ Combine Two Tables    | Easy       | JOIN                                    |[Sol](175-Combine-Two-Tables.sql)      |
| 2  | __176.__ Second Highest Salary | Easy       | Subquery, [Window function](https://www.sqlservertutorial.net/sql-server-window-functions/)([DENSE_RANK](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-dense_rank-function/)), [OFFSET FETCH](https://www.sqlservertutorial.net/sql-server-basics/sql-server-offset-fetch/) |[Sol](176-Second-Highest-Salary.sql)           |
| 3  | __177.__ Nth Highest Salary    | Medium     | Window function(DENSE_RANK), OFFSET FETCH          |[Sol](177-Nth-Highest-Salary.sql)          |
| 4  | __178.__ Rank Scores           | Medium     | Window function([LAG](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-lag-function/), [LEAD](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-lead-function/))                         |[Sol](178-Rank-Scores.sql)          |
| 5  | __180.__ Consecutive Numbers   | Medium     | Subquery, Window function(LAG, LEAD), JOIN         |[Sol](180-Consecutive-Numbers.sql)          |
| 6  | __181.__ Employees Earning More Than Their Managers | Easy | JOIN |[Sol](181-Employees-Earning-More-Than-Their-Managers.sql)|
| 7  | __182.__ Duplicate Emails      | Easy    | GROUP BY, HAVING         |[Sol](182-Duplicate-Emails.sql)          |
| 8  | __183.__ Customers Who Never Order | Easy    | JOIN                |[Sol](183-Customers-Who-Never-Order.sql) |
| 9  | __184.__ Department Highest Salary | Medium  | Subquery, Window function              |[Sol](184-Department-Highest-Salary.sql) |
| 10  | __185.__ Department Top Three Salaries| Hard    | Subquery, Window function           |[Sol](185-Department-Top-Three-Salaries.sql) |
| 11  | __196.__ Delete Duplicate Emails| Easy    | DELETE           |[Sol](196-Delete-Duplicate-Emails.sql) |
| 12  | __197.__ Rising Temperature| Easy    | [DATEADD](https://www.w3schools.com/sql/func_sqlserver_dateadd.asp), JOIN, Subquery, Window function          |[Sol](196-Delete-Duplicate-Emails.sql) |

