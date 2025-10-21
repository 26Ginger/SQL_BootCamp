-- CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
-- SELECT 
--     pizzeria.name AS pizzeria_name
-- FROM person_visits
-- JOIN person 
--     ON person.id = person_visits.person_id
-- JOIN pizzeria
--     ON person_visits.pizzeria_id = pizzeria.id
-- JOIN menu 
--     ON person_visits.pizzeria_id = menu.pizzeria_id
-- WHERE 
--     visit_date = '2022-01-08' 
--     AND person.name = 'Dmitriy'
--     AND menu.price < 800;

SELECT * FROM mv_dmitriy_visits_and_eats;

/*
Please create a Materialized View mv_dmitriy_visits_and_eats (with data included) based on the SQL statement that finds the name of the pizzeria where Dmitriy visited on January 8, 2022 and could eat pizzas for less than 800 rubles (this SQL can be found at Day #02 Exercise #07).
To check yourself, you can write SQL to the Materialized View mv_dmitriy_visits_and_eats and compare the results with your previous query.
*/