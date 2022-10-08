(SELECT 
    CONCAT(
        name, 
        '(', 
        SUBSTRING(Occupation, 1, 1), 
        ')'
    ) AS 'output'
FROM Occupations
)

UNION

(
SELECT 
    CONCAT(
        'There are a total of ',
        COUNT(Occupation),
        ' ',
        LOWER(Occupation),
        's.'
    ) AS 'output'
FROM Occupations
GROUP BY Occupation
)

ORDER BY output;