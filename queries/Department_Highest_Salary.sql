SELECT 
    Department.Name AS Department, 
    Employee.Name AS Employee, 
    Employee.Salary
FROM Employee
JOIN Department
    ON Employee.DepartmentId = Department.Id
JOIN 
    (
        SELECT MAX(Salary) AS Salary, DepartmentId
        FROM Employee
        GROUP BY DepartmentId
    ) AS max_salary
    ON Employee.Salary = max_salary.Salary AND Employee.DepartmentId = max_salary.DepartmentId
;