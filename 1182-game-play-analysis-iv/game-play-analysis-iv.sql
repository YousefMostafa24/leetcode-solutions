/* Write your T-SQL query statement below */
WITH first_login AS (
    SELECT 
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
)
SELECT 
    ROUND(
        COUNT(DISTINCT CASE 
                          WHEN a.event_date = DATEADD(DAY, 1 ,f.first_date) 
                          THEN a.player_id 
                       END) * 1.0
        / COUNT(DISTINCT f.player_id), 2) AS fraction
FROM first_login f
LEFT JOIN Activity a
    ON f.player_id = a.player_id;
