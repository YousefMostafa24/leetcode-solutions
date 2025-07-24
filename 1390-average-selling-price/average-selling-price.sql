/* Write your T-SQL query statement below */
-- Multiply by 1.0 to force decimal division and avoid integer truncation
SELECT P.product_id ,ROUND(COALESCE(SUM(price*units)*1.0 /SUM(units) ,0),2) as average_price
FROM Prices P  LEFT join UnitsSold S
ON P.product_id = S.product_id
AND purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id