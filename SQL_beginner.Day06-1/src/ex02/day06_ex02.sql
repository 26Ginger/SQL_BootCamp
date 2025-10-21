SELECT 
    p.name AS person_name, 
    m.pizza_name, 
    m.price AS original_price, 
    ROUND(m.price - (m.price * pd.discount / 100), 2) AS discount_price, 
    p2.name AS pizzeria_name
FROM 
    person_order
INNER JOIN 
    menu m ON m.id = person_order.menu_id
INNER JOIN 
    person p ON p.id = person_order.person_id
INNER JOIN 
    person_discounts pd ON p.id = pd.person_id 
    AND pd.pizzeria_id = m.pizzeria_id
INNER JOIN 
    pizzeria p2 ON m.pizzeria_id = p2.id
ORDER BY 
    p.name, 
    m.pizza_name;


/*
Write a SQL statement that returns the orders 
with actual price and price with discount applied 
for each person in the corresponding pizzeria restaurant, 
sorted by person name and pizza name. 
Please see the sample data below.

name pizza_name price discount_price pizzeria_name
*/