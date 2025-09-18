/* Write your T-SQL query statement below */
SELECT x ,y ,z , CASE WHEN z < y + x and y < z + x and x < y + z THEN 'Yes'
                    ELSE 'No'
                    END as Triangle
FROM Triangle