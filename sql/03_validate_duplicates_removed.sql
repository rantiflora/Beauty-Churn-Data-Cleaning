- 03_validate_duplicates_removed
-- Purpose: confirm the new table has 18 rows and 18 unique products
-- Result: 18 and 18
SELECT COUNT (*) AS total_rows,COUNT(DISTINCT Product_ID) unique_products FROM beauty_churn.dim_product_step1;
