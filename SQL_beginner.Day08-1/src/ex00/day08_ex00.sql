-- Session #1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;

--Session #2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

/*
Files to turn-in	day08_ex00.sql with comments for Session #1, Session #2 statements; 
screenshot of psql output for Session #1; 
screenshot of psql output for Session #2

*/