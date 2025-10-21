CREATE OR REPLACE FUNCTION fnc_persons_female()
RETURNS TABLE(
    id BIGINT, 
    name VARCHAR, 
    age INTEGER, 
    gender VARCHAR, 
    address VARCHAR) AS $$
SELECT *
FROM person
WHERE gender = 'female';
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE(
    id BIGINT, 
    name VARCHAR, 
    age INTEGER, 
    gender VARCHAR, 
    address VARCHAR) AS $$
SELECT *
FROM person
WHERE gender = 'male';
$$ LANGUAGE SQL;

SELECT * FROM fnc_persons_female();
SELECT * FROM fnc_persons_male();


/*
As you recall, we created 2 database views to separate data from the person tables by gender attribute.
Please define 2 SQL functions (note, not pl/pgsql functions) with the names:


fnc_persons_female (should return female persons),

fnc_persons_male (should return male persons).
*/