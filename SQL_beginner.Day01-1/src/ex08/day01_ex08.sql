SELECT 
    person_order.order_date,
    CONCAT(person_inf.name, ' (age:', person_inf.age, ')') AS person_information
FROM 
    person_order
NATURAL JOIN (
    SELECT 
        id AS person_id, 
        name,
        age
    FROM 
        person
) AS person_inf
ORDER BY 
    person_order.order_date ASC, 
    person_information ASC;

/*
NATURAL JOIN автоматом убирает дубли, uuuuuut'
Please rewrite a SQL statement from Exercise #07 by using NATURAL JOIN construction. 
The result must be the same like for Exercise #07.
*/