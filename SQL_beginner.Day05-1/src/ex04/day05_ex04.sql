-- CREATE UNIQUE INDEX idx_menu_unique 
-- ON menu(pizzeria_id, pizza_name);

SET enable_seqscan = OFF;
EXPLAIN ANALYZE 
SELECT * FROM menu
WHERE pizza_name = 'cheese pizza';

/*
Please create a unique BTree index named idx_menu_unique 
on the menu table for  pizzeria_id and pizza_name columns. 
Write and provide any SQL with proof (EXPLAIN ANALYZE) 
that index idx_menu_unique works.

unique - каждая пара колонок будет уникальной
*/