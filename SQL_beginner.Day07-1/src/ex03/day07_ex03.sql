SELECT 
    COALESCE(visit_count.name, order_count.name) AS name,
    COALESCE(visit_count.count, 0) + COALESCE(order_count.count, 0) AS total_count
FROM 
    (
        SELECT 
            p.name, 
            COUNT(*) AS count
        FROM person_visits pv
        JOIN pizzeria p ON p.id = pv.pizzeria_id
        GROUP BY p.name
    ) AS visit_count
FULL JOIN 
    (
        SELECT 
            p.name, 
            COUNT(*) AS count
        FROM person_order po
        JOIN menu m ON po.menu_id = m.id
        JOIN pizzeria p ON m.pizzeria_id = p.id
        GROUP BY p.name
    ) AS order_count
ON visit_count.name = order_count.name
ORDER BY 
    total_count DESC,
    name ASC;

/*
Write an SQL statement to see how restaurants 
are grouped by visits and by orders, 
and joined together by restaurant name.
You can use the internal SQL from Exercise 02 
(Restaurants by Visits and by Orders) 
without any restrictions on the number of rows.
In addition, add the following rules.

Compute a sum of orders and visits 
for the corresponding pizzeria 
(note that not all pizzeria keys are represented in both tables).
Sort the results by the total_count column 
in descending order and 
by the name column in ascending order.
Take a look at the example data below.
name
total_count
*/