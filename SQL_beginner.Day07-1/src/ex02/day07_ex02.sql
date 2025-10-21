(
    SELECT 
        p.name, 
        COUNT(*) AS count, 
        'visit' AS action_type
    FROM person_visits pv
    JOIN pizzeria p ON p.id = pv.pizzeria_id
    GROUP BY p.name
    ORDER BY count DESC
    LIMIT 3
)
UNION
(
    SELECT 
        p.name, 
        COUNT(*) AS count, 
        'order' AS action_type
    FROM person_order po
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria p ON m.pizzeria_id = p.id
    GROUP BY p.name
    ORDER BY count DESC
    LIMIT 3
)

ORDER BY 
    action_type ASC, 
    count DESC;

/*
Please write a SQL statement to see 3 favorite restaurants 
by visits and by orders in a list 
(please add an action_type column with values 
'order' or 'visit', it depends on the data 
from the corresponding table). 
Please have a look at the example data below. 
The result should be sorted in ascending order by the action_type column and in descending order by the count column.

name
count
action_type
*/