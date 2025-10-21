/*
COMMENT ON TABLE person_discounts IS NULL;

COMMENT ON COLUMN person_discounts.id IS NULL;
COMMENT ON COLUMN person_discounts.person_id IS NULL;
COMMENT ON COLUMN person_discounts.pizzeria_id IS NULL;
COMMENT ON COLUMN person_discounts.discount IS NULL;
*/

--/*
COMMENT ON TABLE person_discounts IS 
'Таблица индивидуальных скидок клиентов';

COMMENT ON COLUMN person_discounts.id IS 
'Идентификатор записи';

COMMENT ON COLUMN person_discounts.person_id IS 
'Идентификатор клиента';

COMMENT ON COLUMN person_discounts.pizzeria_id IS 
'Идентификатор пиццерии';

COMMENT ON COLUMN person_discounts.discount IS 
'Скидка в процентах'; 
--*/

/*
To comply with Data Governance Policies, you need to 
add comments for the table and the table's columns. 
Let's apply this policy to the person_discounts table. 
Please add English or Russian comments (it is up to you) 
explaining what is a business goal of a table and all 
its attributes.
*/