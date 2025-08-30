/* Write your T-SQL query statement below */
SELECT user_id , upper(substring(name ,1 ,1)) + lower(substring(name ,2 ,len(name))) as name
FROM Users
ORDER BY user_id