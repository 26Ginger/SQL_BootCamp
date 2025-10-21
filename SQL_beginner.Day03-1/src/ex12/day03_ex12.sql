SELECT * FROM person_order;

-- WITH person_order_new AS (
--     SELECT 
--         p.id AS person_id,
--         gs.id AS order_id,
--         m.id AS menu_id
--     FROM 
--         generate_series(
--             (SELECT MAX(id) + 1 FROM person_order), 
--             (SELECT MAX(id) + (SELECT COUNT(*) FROM person) FROM person_order)
--         ) AS gs(id)
--     JOIN person p ON gs.id - (SELECT MAX(id) FROM person_order) = (SELECT COUNT(*) FROM person WHERE id <= p.id)
--     JOIN menu m ON m.pizza_name = 'greek pizza'
-- )
-- INSERT INTO person_order (id, person_id, menu_id, order_date)
-- SELECT order_id, person_id, menu_id, '2022-02-25' AS order_date
-- FROM person_order_new;


/*
SQL Syntax Construction
generate_series(...)
SQL Syntax Patten
Please use “insert-select” pattern
INSERT INTO ... SELECT ...

Denied SQL Syntax Patten
- Don’t use direct numbers for identifiers of Primary Key, and menu
Don’t use window functions like ROW_NUMBER( )
Don’t use atomic INSERT statements |
Please register new orders of all persons 
for "greek pizza" on February 25, 2022.
*/