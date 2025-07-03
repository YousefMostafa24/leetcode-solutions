/* Write your T-SQL query statement below */
--2019-07-27 - 29 days = 2019-06-28
SELECT COUNT(DISTINCT user_id) as active_users ,activity_date as day
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date