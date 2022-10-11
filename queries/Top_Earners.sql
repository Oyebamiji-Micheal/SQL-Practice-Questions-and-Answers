SELECT 
    (months * salary) AS 'total_earning',
    COUNT(*)
FROM Employee
GROUP BY total_earning
ORDER BY total_earning DESC
LIMIT 1;