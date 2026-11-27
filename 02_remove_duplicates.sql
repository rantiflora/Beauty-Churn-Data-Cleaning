-- 02_remove_duplicates
-- Purpose: create a deduplicated copy of the raw table
-- Result: 18 rows, one per Product_ID
CREATE OR REPLACE TABLE beauty_churn.dim_product_step1 AS SELECT DISTINCT * FROM beauty_churn.raw_products;
