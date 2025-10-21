SELECT
    p.name AS person_name
FROM 
    person AS p
JOIN 
    person_order AS po ON p.id = po.person_id
JOIN 
    menu AS m ON po.menu_id = m.id
WHERE 
    p.gender = 'female'
    AND m.pizza_name IN ('pepperoni pizza', 'cheese pizza')
GROUP BY 
    p.name
HAVING 
    COUNT(DISTINCT m.pizza_name) = 2
ORDER BY 
    p.name ASC;


/*
Find the names of all women who ordered 
both pepperoni and cheese pizzas 
(at any time and in any pizzerias). 
Make sure that the result is ordered 
by person's name. 
The sample data is shown below.
*/

/*
SELECT 
    p.name AS person_name
FROM 
    person AS p
JOIN 
    person_order AS po ON p.id = po.person_id
JOIN 
    menu AS m ON po.menu_id = m.id
WHERE 
    p.gender = 'female'
    AND m.pizza_name = 'pepperoni pizza'
    AND p.id IN (
        SELECT person_id
        FROM person_order AS po2
        JOIN menu AS m2 ON po2.menu_id = m2.id
        WHERE m2.pizza_name = 'cheese pizza'
    )
ORDER BY 
    p.name ASC;
	*/