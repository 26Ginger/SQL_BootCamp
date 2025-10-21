SELECT 
    person_order.order_date,
    CONCAT(person.name, ' (age:', person.age, ')') AS person_information
FROM 
    person_order
JOIN 
    person 
ON 
    person_order.person_id = person.id
ORDER BY 
    person_order.order_date ASC, 
    person_information ASC;


/*
Write an SQL statement that returns the order date from the person_order table 
and the corresponding person name (name and age are formatted as in the data sample below - Andrey (age:21) ) 
who made an order from the person table. 
Add a sort by both columns in ascending order.
*/