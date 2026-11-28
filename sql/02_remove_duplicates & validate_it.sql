-- 02_remove_duplicates
-- Purpose: create a deduplicated copy of the raw table
-- Result: 18 rows, one per Product_ID
CREATE OR REPLACE TABLE beauty_churn.dim_product_step1 AS SELECT DISTINCT * FROM beauty.churn.raw_produts;

-- 03_validate_duplicates_removed
-- Purpose: confirm the new table has 18 rows and 18 unique products
-- Result: 18 and 18
SELECT COUNT (*) AS total_rows,COUNT(DISTINCT Product_ID) unique_products FROM beauty_churn.dim_product_step1;
