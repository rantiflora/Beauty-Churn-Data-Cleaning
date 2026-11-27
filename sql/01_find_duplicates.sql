-- 01_find_duplicates
-- Purpose: find Product_IDs that appear more than once
-- Result: PROD-01 and PROD-13 appear 2 times each
SELECT Product_ID, COUNT (*) AS row_count FROM beauty_churn.raw_products GROUP BY Product_ID HAVING COUNT (*) >1;
