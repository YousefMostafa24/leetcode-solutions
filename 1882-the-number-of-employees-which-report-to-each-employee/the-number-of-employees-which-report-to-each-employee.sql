/* Write your T-SQL query statement below */
SELECT M.employee_id ,M.name ,count(*) as reports_count ,CAST(AVG(CAST(E.age AS FLOAT)) + 0.5 AS INT) AS average_age
FROM Employees E JOIN Employees M
ON E.reports_to = M.employee_id
GROUP BY M.employee_id ,M.name
ORDER BY M.employee_id
