SELECT pizza_name
FROM menu m1
WHERE NOT EXISTS (
    SELECT *
    FROM menu m2
    WHERE m1.pizza_name = m2.pizza_name
      AND m1.id > m2.id
)
ORDER BY 
    pizza_name DESC;


/* 
Denied
DISTINCT, GROUP BY, HAVING, any type of JOINs
Write an SQL statement that returns unique pizza names 
from the menu table and sorts them by the pizza_name column 
in descending order. 
Please note the Denied section.
*/

-- SELECT DISTINCT pizza_name 
-- FROM menu
-- ORDER BY 
--     pizza_name DESC;