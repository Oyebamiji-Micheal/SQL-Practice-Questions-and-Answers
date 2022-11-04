SELECT 
    COUNTRY.Continent,
    FLOOR(AVG(CITY.Population)) AS average_population
FROM COUNTRY
    JOIN CITY
        ON COUNTRY.Code = City.CountryCode
GROUP BY COUNTRY.Continent;