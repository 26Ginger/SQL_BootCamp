SELECT 
    m1.pizza_name,
    pz1.name AS pizzeria_name_1,
    pz2.name AS pizzeria_name_2,
    m1.price
FROM 
    menu m1
JOIN 
    pizzeria pz1 ON m1.pizzeria_id = pz1.id
JOIN 
    menu m2 ON m1.pizza_name = m2.pizza_name 
    AND m1.price = m2.price
JOIN 
    pizzeria pz2 ON m2.pizzeria_id = pz2.id
WHERE 
    m1.pizzeria_id > m2.pizzeria_id
ORDER BY 
    m1.pizza_name;

/*
Find the same pizza names that have the same price, 
but from different pizzerias. 
Make sure that the result is ordered by pizza name. 
The data sample is shown below. 
Please make sure that your column names match the column names below.
pizza_name
pizzeria_name_1
pizzeria_name_2
price
*/