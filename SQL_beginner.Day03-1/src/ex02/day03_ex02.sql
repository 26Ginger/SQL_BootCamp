SELECT 
    pizza_name, 
    price,
    pz.name AS pizzeria_name
FROM 
    menu
JOIN
    pizzeria AS pz
ON pz.id = menu.pizzeria_id
WHERE 
    menu.id NOT IN (
        SELECT menu_id
        FROM person_order
    )
ORDER BY 
    pizza_name ASC, 
    price ASC;

/*
Please use the SQL statement from Exercise #01 
and display the names of pizzas 
from the pizzeria that no one has ordered, 
including the corresponding prices. 
The result should be sorted by pizza name and price. 
The sample output data is shown below.
*/