SELECT 
    pz.name AS name,
    COUNT(po.id) AS count_of_orders,
    ROUND(AVG(m.price), 2) AS average_price,
    MAX(m.price) AS max_price,
    MIN(m.price) AS min_price
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY pz.name
ORDER BY pz.name ASC;


/*
Please write a SQL statement that returns 
the number of orders, the average price, 
the maximum price and the minimum price 
for pizzas sold by each pizzeria restaurant. 
The result should be sorted by pizzeria name. 
See the sample data below.
Round the average price to 2 floating numbers.
name
count_of_orders
average_price
max_price
min_price
*/