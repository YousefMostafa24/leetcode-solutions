/* Write your T-SQL query statement below */
SELECT e.employee_id ,e.department_id
FROM Employee e 
JOIN
    (select employee_id ,count(*) as d_count
        from employee 
        group by employee_id ) d
ON e.employee_id = d.employee_id
WHERE d_count = 1 or d_count > 1 and primary_flag ='Y'