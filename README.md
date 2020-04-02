# LeetCode SQL Questions

| No | Title                      | Difficulty | Method                                  | Solution |
|----|----------------------------|------------|-----------------------------------------|----------|
| 1  | __175.__ [Combine Two Tables](https://leetcode.com/problems/combine-two-tables/)    | Easy       | JOIN                                    |[Sol](175-Combine-Two-Tables.sql)      |
| 2  | __176.__ [Second Highest Salary](https://leetcode.com/problems/second-highest-salary/) | Easy       | Subquery, [Window function](https://www.sqlservertutorial.net/sql-server-window-functions/)([DENSE_RANK](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-dense_rank-function/)), [OFFSET FETCH](https://www.sqlservertutorial.net/sql-server-basics/sql-server-offset-fetch/) |[Sol](176-Second-Highest-Salary.sql)           |
| 3  | __177.__ [Nth Highest Salary](https://leetcode.com/problems/nth-highest-salary/)    | Medium     | Window function(DENSE_RANK), OFFSET FETCH          |[Sol](177-Nth-Highest-Salary.sql)          |
| 4  | __178.__ [Rank Scores](https://leetcode.com/problems/rank-scores/)           | Medium     | Window function(DENSE_RANK)                        |[Sol](178-Rank-Scores.sql)          |
| 5  | __180.__ [Consecutive Numbers](https://leetcode.com/problems/consecutive-numbers/)   | Medium     | Subquery, Window function([LAG](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-lag-function/), [LEAD](https://www.sqlservertutorial.net/sql-server-window-functions/sql-server-lead-function/)) , JOIN         |[Sol](180-Consecutive-Numbers.sql)          |
| 6  | __181.__ [Employees Earning More Than Their Managers](https://leetcode.com/problems/employees-earning-more-than-their-managers/) | Easy | JOIN |[Sol](181-Employees-Earning-More-Than-Their-Managers.sql)|
| 7  | __182.__ [Duplicate Emails](https://leetcode.com/problems/duplicate-emails/)      | Easy    | GROUP BY, HAVING         |[Sol](182-Duplicate-Emails.sql)          |
| 8  | __183.__ [Customers Who Never Order](https://leetcode.com/problems/customers-who-never-order/) | Easy    | JOIN                |[Sol](183-Customers-Who-Never-Order.sql) |
| 9  | __184.__ [Department Highest Salary](https://leetcode.com/problems/department-highest-salary/) | Medium  | Subquery, Window function(DENSE_RANK)              |[Sol](184-Department-Highest-Salary.sql) |
| 10  | __185.__ [Department Top Three Salaries](https://leetcode.com/problems/department-top-three-salaries/)| Hard    | Subquery, Window function(DENSE_RANK)           |[Sol](185-Department-Top-Three-Salaries.sql) |
| 11  | __196.__ [Delete Duplicate Emails](https://leetcode.com/problems/delete-duplicate-emails/)| Easy    | [DELETE](https://www.sqlservertutorial.net/sql-server-basics/sql-server-delete/)           |[Sol](196-Delete-Duplicate-Emails.sql) |
| 12  | __197.__ [Rising Temperature](https://leetcode.com/problems/rising-temperature/)| Easy    | [DATEADD](https://www.w3schools.com/sql/func_sqlserver_dateadd.asp), JOIN, Subquery, Window function(LAG)          |[Sol](197-Rising-Temperature.sql) |
| 13  | __262.__ [Trips and Users](https://leetcode.com/problems/trips-and-users/)| Hard    | [CTE](https://www.sqlservertutorial.net/sql-server-basics/sql-server-cte/), [CASE](https://www.sqlservertutorial.net/sql-server-basics/sql-server-case/), [CAST](https://www.sqlservertutorial.net/sql-server-system-functions/sql-server-cast-function/), [DECIMAL](https://www.sqlservertutorial.net/sql-server-basics/sql-server-decimal/)      |[Sol](262-Trips-and-Users.sql) |
| 14  | __511.__ [Game Play Analysis I](https://leetcode.com/problems/game-play-analysis-i/)| Easy    | GROUP BY         |[Sol](511-Game-Play-Analysis-I.sql) |
| 15  | __512.__ [Game Play Analysis II](https://leetcode.com/problems/game-play-analysis-ii/)| Easy    | Subquery, JOIN, Window function(DENSE_RANK)         |[Sol](512-Game-Play-Analysis-II.sql) |
| 16  | __534.__ [Game Play Analysis III](https://leetcode.com/problems/game-play-analysis-iii/)| Medium    | Window function(SUM)         |[Sol](534-Game-Play-Analysis-III.sql) |
| 17  | __550.__ [Game Play Analysis IV](https://leetcode.com/problems/game-play-analysis-iv/)| Medium    | CTE, Window function(LEAD), DATEADD, DECIMAL         |[Sol](550-Game-Play-Analysis-IV.sql) |
| 18  | __569.__ [Median Employee Salary](https://leetcode.com/problems/median-employee-salary/)| Hard    |   |[Sol]() |
