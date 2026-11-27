-- 05_validate_data_types
-- Purpose: count rows where a numeric conversion failed
-- Result: 0
SELECT COUNT (*) AS bad_rows FROM beauty_churn.dim_product_step2 WHERE Expected_Refill_Days IS NULL OR Unit_Cost_USD IS NULL OR Retail_Price_USD IS NULL;
