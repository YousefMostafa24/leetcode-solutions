/* Write your T-SQL query statement below */
SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
WHERE EXISTS (
    SELECT 1
    FROM Sales s2
    WHERE s.product_id = s2.product_id
      AND s.year = (
          SELECT MIN(year)
          FROM Sales
          WHERE product_id = s2.product_id
      )
)
