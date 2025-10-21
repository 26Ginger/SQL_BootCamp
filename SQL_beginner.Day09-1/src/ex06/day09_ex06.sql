CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice NUMERIC DEFAULT 500,
    pdate DATE DEFAULT '2022-01-08')
            RETURNS TABLE(name VARCHAR) AS $$
            BEGIN
            RETURN QUERY
                SELECT p.name AS pizzeria_name
                FROM menu m
                JOIN pizzeria p ON p.id = m.pizzeria_id
                JOIN person_visits pv ON m.pizzeria_id = pv.pizzeria_id
                JOIN person pe ON pe.id = pv.person_id
                WHERE price  < pprice AND pe.name = pperson AND visit_date = pdate;
            END;
            $$ LANGUAGE PLPGSQL;

SELECT * FROM fnc_person_visits_and_eats_on_date(pprice := 800);
SELECT * FROM fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

/*
Please create a pl/pgsql function fnc_person_visits_and_eats_on_date based on an SQL statement that will find the names of pizzerias that a person (IN pperson parameter with default value 'Dmitriy') visited and where he could buy pizza for less than the given amount in rubles (IN pprice parameter with default value 500) on the given date (IN pdate parameter with default value January 8, 2022).
*/