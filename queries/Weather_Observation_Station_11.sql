SELECT DISTINCT CITY
FROM STATION
WHERE 
    SUBSTRING(CITY, 1, 1) NOT IN ('a', 'e', 'i', 'o', 'u') OR
    SUBSTRING(CITY, -1) NOT IN ('a', 'e', 'i', 'o', 'u');