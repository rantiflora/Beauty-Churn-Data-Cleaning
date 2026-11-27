-- 07_fix_negative_cost
-- Purpose: convert negative unit cost to its absolute value
-- Result: PROD-07 Unit_Cost_USD changes from -8 to 8
CREATE OR REPLACE TABLE beauty_churn.dim_product_step3 AS SELECT * REPLACE (ABS(Unit_Cost_USD) AS Unit_Cost_USD FROM beauty_churn.dim_product_step2;
