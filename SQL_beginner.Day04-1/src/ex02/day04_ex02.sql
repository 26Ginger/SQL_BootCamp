-- CREATE VIEW v_generated_dates AS
-- SELECT 
--     generate_series(
--         DATE '2022-01-01', 
--         DATE '2022-01-31', 
--         INTERVAL '1 day'
--     )::DATE AS generated_date
-- ORDER BY generated_date;

-- SELECT * FROM v_generated_dates;      
SELECT count(*) = 31 AS CHECK, min(generated_date) AS check1, max(generated_date) AS check2 FROM v_generated_dates;

/*
Please create a Database View 
(with name v_generated_dates) 
which should "store" generated dates 
from January 1st to January 31st, 2022 in type DATE. 
Don't forget the order of the generated_date column.
*/