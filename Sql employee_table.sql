SELECT * FROM employee_table 

SELECT DISTINCT salary AS ThirdHighestSalary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employee_table
) AS ranked_salaries
WHERE salary_rank = 3;
