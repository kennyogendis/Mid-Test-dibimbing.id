CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);    

SELECT * FROM employee_table 
    
SELECT DISTINCT salary AS ThirdHighestSalary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employee_table
) AS ranked_salaries
WHERE salary_rank = 3;
