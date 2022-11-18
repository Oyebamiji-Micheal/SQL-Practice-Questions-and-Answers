SELECT Wands.id, 
   b.age, 
   Wands.coins_needed, 
   Wands.power 
FROM   ands 
   JOIN wands_property b 
     ON Wands.code = b.code 
WHERE  b.is_evil = 0 
    AND Wands.coins_needed = (SELECT Min(a1.coins_needed) 
    FROM   wands a1 
        JOIN wands_property b1 
          ON a1.code = b1.code 
    WHERE  b.age = b1.age 
        AND Wands.power = a1.power) 
ORDER  BY Wands.power DESC, 
          b.age DESC;