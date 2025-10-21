-- Session #1
SHOW TRANSACTION ISOLATION LEVEL;
SELECT name, rating FROM pizzeria WHERE name = 'Pizza Hut';
BEGIN;
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;
SELECT name, rating FROM pizzeria WHERE name = 'Pizza Hut';


-- Session #2
SHOW TRANSACTION ISOLATION LEVEL;
BEGIN;
SELECT name, rating FROM pizzeria WHERE name = 'Pizza Hut';
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
SELECT name, rating FROM pizzeria WHERE name = 'Pizza Hut';

/*
day08_ex01.sql with comments for Session #1, Session #2 statements; 
screenshot of psql output for Session #1; 
screenshot of psql output for Session #2

*/