SELECT 
    Table1.name AS Employee 
FROM Employee AS Table1
JOIN Employee As Table2
    ON Table1.ManagerId = Table2.id
WHERE Table1.salary > Table2.salary;