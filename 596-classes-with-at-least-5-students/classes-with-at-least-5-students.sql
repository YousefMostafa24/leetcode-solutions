/* Write your T-SQL query statement below */
-- [ ] used to escape reserved keywords like 'class'
SELECT [class]
FROM Courses
GROUP BY [class]
HAVING COUNT(student) >= 5