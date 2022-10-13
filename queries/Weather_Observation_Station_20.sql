SET @row_num := -1;
SELECT ROUND(AVG(LAT_N), 4)
FROM 
    (SELECT LAT_N, @row_num := @row_num + 1 AS row_index
    FROM STATION
    ORDER BY LAT_N) AS temp
WHERE row_index IN (FLOOR(@row_num/2), CEIL(@row_num/2));