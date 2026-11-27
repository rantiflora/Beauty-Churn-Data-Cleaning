-- 00_initial_row_count
-- Purpose: check the total number of rows in the raw table
-- Result: 20 rows (expected 18, so duplicates are likely) 
SELECT COUNT(*) AS row_Count FROM beauty_Churn.raw_products;
