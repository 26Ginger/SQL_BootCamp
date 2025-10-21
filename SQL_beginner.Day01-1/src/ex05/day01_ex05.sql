SELECT 
    person.id AS person_id, 
    person.name AS person_name, 
    person.age, 
    person.gender, 
    person.address,
    pizzeria.id AS pizzeria_id, 
    pizzeria.name AS pizzeria_name, 
    pizzeria.rating
FROM 
    person
CROSS JOIN 
    pizzeria
ORDER BY 
    person.id ASC, 
    pizzeria.id ASC;


/*
Cartesian Product -  декартово произведение - все на всех
Please write a SQL statement that returns all possible combinations between 
person and pizzeria tables, and please set the order of the 
person identifier columns and then the pizzeria identifier columns. 
Please take a look at the sample result below. 
Please note that the column names may be different for you.
*/